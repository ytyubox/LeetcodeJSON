import XCTest
@testable import leetcodeJSON

final class leecodeJSONTests: XCTestCase {
    func testExample() throws {
        _ = try JSON()
    }
    func test() {
        let names = ["Find Followers Count"]
        XCTAssertEqual(
            getDescription(form: names),
            ["* \t🔓\tEASY\t1729\tFind Followers Count\thttps://leetcode.com/problems/find-followers-count"])
    }
    
    
    
    

    static var allTests = [
        ("testExample", testExample),
    ]
}

func getDescription(form names:[String]) -> [String] {
    
    var dic:[String:String] = [:]
    let json = try! JSON()
    for q in json.questions {
        if names.contains(q.stat.questionTitle) {
            dic[q.stat.questionTitle] = q.text
        }
    }
    
    var results: [String] = []
    for name in names {
        results.append(dic[name] ?? "⚠️ \(name) not found")
    }
    
    return results
}



extension StatStatusPair {
    var text: String {
        let list:[[CustomStringConvertible]] =
        [
            ["* "],
            (paidOnly == true) ? ["🔓"]:[],
            [difficulty],
            stat.list.map{$0},
        ]
        return list
            .flatMap{$0}
            .map(\.description)
            .joined(separator: "\t")
    }
}
