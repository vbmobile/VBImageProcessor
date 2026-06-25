// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "AMAImageProcessor",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AMAImageProcessor",
            targets: ["AMAImageProcessorWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vbmobile/VBUtils", exact: "3.0.2"),
    ],
    targets: [
        .binaryTarget(
            name: "AMAImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMAImageProcessor/AMAImageProcessor-2.0.1.zip",
            checksum: "8e80ffef7c332cc3206ee9637455fe9b99cfd7d2be48dbc5c26a78b046e980b7"
        ),
        .target(
            name: "AMAImageProcessorWrapper",
            dependencies: [
                .target(name: "AMAImageProcessor"),
                .product(name: "AMAUtils", package: "VBUtils")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
