//
/* 
 *		Created by 游諭 in 2021/1/20
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 11.1
 */
import Foundation
let baseURL = URL(string: "https://leetcode.com/problems/")!
struct LeetcodeModel: Codable {
    let acEasy: Decimal
    let acHard: Decimal
    let acMedium: Decimal
    let categorySlug: String
    let frequencyHigh: Double
    let frequencyMid: Double
    let numSolved: Decimal
    let numTotal: Decimal
    let statStatusPairs: [StatStatusPair]
    let userName: String

    enum CodingKeys: String, CodingKey {
        case acEasy = "ac_easy"
        case acHard = "ac_hard"
        case acMedium = "ac_medium"
        case categorySlug = "category_slug"
        case frequencyHigh = "frequency_high"
        case frequencyMid = "frequency_mid"
        case numSolved = "num_solved"
        case numTotal = "num_total"
        case statStatusPairs = "stat_status_pairs"
        case userName = "user_name"
    }
}

// MARK: - StatStatusPair
struct StatStatusPair: Codable, Comparable, CustomStringConvertible {
    static func < (lhs: StatStatusPair, rhs: StatStatusPair) -> Bool {
        lhs.stat.frontendQuestionid < rhs.stat.frontendQuestionid
    }
    
    static func == (lhs: StatStatusPair, rhs: StatStatusPair) -> Bool {
        lhs.stat.frontendQuestionid == rhs.stat.frontendQuestionid
    }
    var description: String {
        [
            
            stat.list,
            [
                difficulty
            ]
        ].flatMap{$0}
        .map(\.description)
        .joined(separator: "\t ")
    }
    
    let difficulty: Difficulty
    let frequency: Decimal
    let isFavor: Bool?
    let paidOnly: Bool?
    let progress: Double
    let stat: Stat
//    let status: JSONAny?

    enum CodingKeys: String, CodingKey {
        case difficulty = "difficulty"
        case frequency = "frequency"
        case isFavor = "is_favor"
        case paidOnly = "paid_only"
        case progress = "progress"
        case stat = "stat"
//        case status = "status"
    }
}

// MARK: - Difficulty
struct Difficulty: Codable, CustomStringConvertible {
    let level: Decimal
    var description: String {
        switch level {
        case 1: return "HARD"
        case 2: return "MEDIUM"
        case 3: return "EASY"
        default: return "Other"
        }
    }
    enum CodingKeys: String, CodingKey {
        case level = "level"
    }
}

// MARK: - Stat
struct Stat: Codable {
    let frontendQuestionid: Decimal
    let isNewQuestion: Bool
//    let questionArticleHasVideoSolution: JSONAny
//    let questionArticleLive: JSONAny
//    let questionArticleSlug: JSONAny
    let questionHide: Bool
    let questionTitle: String
    let questionTitleSlug: String
    let questionid: Decimal
    let totalAcs: Decimal
    let totalSubmitted: Decimal
    var url: URL {
        baseURL.appendingPathComponent(questionTitleSlug)
    }
    var list:[CustomStringConvertible] {
        [
            frontendQuestionid,
            questionTitle,
            url,
        ]
    }

    enum CodingKeys: String, CodingKey {
        case frontendQuestionid = "frontend_question_id"
        case isNewQuestion = "is_new_question"
//        case questionArticleHasVideoSolution = "question__article__has_video_solution"
//        case questionArticleLive = "question__article__live"
//        case questionArticleSlug = "question__article__slug"
        case questionHide = "question__hide"
        case questionTitle = "question__title"
        case questionTitleSlug = "question__title_slug"
        case questionid = "question_id"
        case totalAcs = "total_acs"
        case totalSubmitted = "total_submitted"
    }
}
