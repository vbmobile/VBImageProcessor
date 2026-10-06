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
        .package(url: "https://github.com/vbmobile/VBUtils", .exact("2.0.3")),
    ],
    targets: [
        .binaryTarget(
            name: "VBImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/MobileIdSDKiOS/VBImageProcessor/VBImageProcessor-1.2.4.zip",
            checksum: "3f457c45a3a83a60fc4cd99aee935bd2a4a46dff99a2b16e292515353b2dde82"
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
