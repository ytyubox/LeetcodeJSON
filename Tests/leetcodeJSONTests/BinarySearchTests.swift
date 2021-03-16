//
/* 
 *		Created by 游宗諭 in 2021/3/16
 *		
 *		Using Swift 5.0
 *		
 *		Running on macOS 11.2
 */


import XCTest

final class GetBinarySearchTests: XCTestCase {
    func test() {
        let names = [
              "Binary Search",
              "Sqrt(x)",
              "Guess Number Higher or Lower",
              "Search in Rotated Sorted Array",
              "First Bad Version",
              "Find Peak Element",
              "Find Minimum in Rotated Sorted Array",
              "Search for a Range",
              "Find K Closest Elements",
              "Find Peak Element",
              "Closest Binary Search Tree Value",
              "Search in a Sorted Array of Unknown Size",
              "Pow(x, n)",
              "Valid Perfect Square",
              "Find Smallest Letter Greater Than Target",
              "Find Minimum in Rotated Sorted Array",
              "Find Minimum in Rotated Sorted Array II",
              "Intersection of Two Arrays",
              "Intersection of Two Arrays II",
              "Two Sum II - Input array is sorted",
              "Find the Duplicate Number",
              "Median of Two Sorted Arrays",
              "Find K-th Smallest Pair Distance",
              "Split Array Largest Sum",
        ]
        let name = getDescription(form: names)
        print(name.joined(separator: "\n"))
    }
}

