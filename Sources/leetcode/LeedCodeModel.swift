//
/* 
 *		Created by 游諭 in 2021/1/20
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 11.1
 */


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let leetcode = try? newJSONDecoder().decode(Leetcode.self, from: jsonData)

import Foundation

/// Generated from leetcode.json with shasum c0d350f68b0db1be7410e9da3397596deeacde8a
// MARK: - Leetcode
struct LeetcodeModel:Decodable {
    let acEasy: Int
    let acHard: Int
    let acMedium: Int
    let categorySlug: String
    let frequencyHigh: Double
    let frequencyMid: Double
    let numSolved: Int
    let numTotal: Int
    let statStatusPairs: [StatStatusPair]
    let userName: String
}

// MARK: - StatStatusPair
struct StatStatusPair:Decodable {
    let difficulty: Difficulty
    let frequency: Int
    let isFavor: Bool?
    let paidOnly: Bool?
    let progress: Double
    let stat: Stat
//    let status: Any?
}

// MARK: - Difficulty
struct Difficulty:Decodable {
    let level: Int
}

// MARK: - Stat
struct Stat:Decodable {
    let frontendQuestionid: Int
    let isNewQuestion: Bool
//    let questionArticleHasVideoSolution: Any?
//    let questionArticleLive: Any?
//    let questionArticleSlug: Any?
    let questionHide: Bool
    let questionTitle: String
    let questionTitleSlug: String
    let questionid: Int
    let totalAcs: Int
    let totalSubmitted: Int
}

