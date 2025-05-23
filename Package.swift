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
        .package(url: "https://github.com/vbmobile/VBUtils", .exact("2.0.1")),
    ],
    targets: [
        .binaryTarget(
            name: "VBImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/MobileIdSDKiOS/VBImageProcessor/VBImageProcessor-1.2.1.zip",
            checksum: "302e75aa58a7247fcbf140fbaaa71fa8763451e710d0d07ca9204aa8ff6e71cf"
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
