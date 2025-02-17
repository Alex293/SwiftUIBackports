// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIBackports",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "SwiftUIBackports",
            targets: ["SwiftUIBackports"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/shaps80/SwiftBackports", from: "1.0.2")
    ],
    targets: [
        .target(
            name: "SwiftUIBackports",
            dependencies: ["SwiftBackports", "SwiftUIBackportsC"]
        ),
        .target(
            name: "SwiftUIBackportsC",
            publicHeadersPath: "Internal"
        )
    ],
    swiftLanguageVersions: [.v5]
)
