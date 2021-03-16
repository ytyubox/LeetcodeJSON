import Foundation
struct JSON {
    init() throws {
        self.questions = try JSONDecoder().decode(LeetcodeModel.self, from:
                                    try getData()
        ).statStatusPairs
        
    }
    var questions: [StatStatusPair]
}
func getData() throws -> Data {
    let dataURL = Bundle.module.url(forResource: "leetcode", withExtension: "json")!
    return try Data(contentsOf: dataURL)
}
