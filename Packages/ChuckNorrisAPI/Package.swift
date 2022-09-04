// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChuckNorrisAPI",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "ChuckNorrisAPI",
            targets: ["ChuckNorrisAPI"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ChuckNorrisAPI",
            dependencies: []),
        .testTarget(
            name: "ChuckNorrisAPITests",
            dependencies: ["ChuckNorrisAPI"]),
    ]
)
