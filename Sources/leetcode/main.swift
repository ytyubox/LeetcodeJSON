//
/* 
 *		Created by 游諭 in 2021/1/20
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 11.1
 */


import Foundation

func piped() -> Data {
    FileHandle.standardInput.readDataToEndOfFile()
}
let data = piped()
let model = try JSONDecoder().decode(LeetcodeModel.self, from: data)
var list = model.statStatusPairs.sorted()
print(list.map(\.description).joined(separator: "\n"))
