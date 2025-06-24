// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VBImageProcessor",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VBImageProcessor",
            targets: ["VBImageProcessorWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vbmobile/VBUtils", .exact("2.0.2")),
    ],
    targets: [
        .binaryTarget(
            name: "VBImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/MobileIdSDKiOS/VBImageProcessor/VBImageProcessor-1.2.2.zip",
            checksum: "1a7f793ea16c0511f898f3561ae102d6d9c696fa4478a6f2ee424d1bdf7a8bf5"
        ),
        .target(
            name: "VBImageProcessorWrapper",
            dependencies: [
                .target(name: "VBImageProcessor"),
                .product(name: "VBUtils", package: "VBUtils")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
