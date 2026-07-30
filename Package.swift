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
        .package(url: "https://github.com/vbmobile/AMAUtils", exact: "3.0.4"),
    ],
    targets: [
        .binaryTarget(
            name: "AMAImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMAImageProcessor/AMAImageProcessor-2.0.4.zip",
            checksum: "5086b2639e090db6e9093fd077a566aeed9cb437b73a1ca8820ee0737a749161"
        ),
        .target(
            name: "AMAImageProcessorWrapper",
            dependencies: [
                .target(name: "AMAImageProcessor"),
                .product(name: "AMAUtils", package: "AMAUtils")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
