// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "leetcodeJSON",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "leetcodeJSON",
            targets: ["leetcodeJSON"]),
        .executable(name: "leetcode", targets: ["leetcode"])
    ],
    dependencies: [
       
    ],
    targets: [
        .target(name: "leetcode",
                dependencies: []),
        .target(
            name: "leetcodeJSON",
            dependencies: [],
            resources: [.process("Resources")]),
        .testTarget(
            name: "leetcodeJSONTests",
            dependencies: ["leetcodeJSON"]),
    ]
)
