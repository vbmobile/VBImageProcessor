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
            targets: ["VBImageProcessor"]),
    ],
    dependencies: [
        .package(name: "VBUtils", url: "https://github.com/vbmobile/VBUtils", .exact("2.0.0")),
    ],
    targets: [
        .binaryTarget(
            name: "VBImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/MobileIdSDKiOS/VBImageProcessor/VBImageProcessor-1.2.0.zip",
            checksum: "49bbb3aaffb6dda60992e484b7a4b868eb227c90f73ce39f59152ece7494ace7"
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
