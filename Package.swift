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
        .package(url: "https://github.com/vbmobile/VBUtils", exact: "3.0.3"),
    ],
    targets: [
        .binaryTarget(
            name: "AMAImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMAImageProcessor/AMAImageProcessor-2.0.2.zip",
            checksum: "55c453d3141cc673fd2257f9ab240880f4807fcb1e3963170e0730fb0e00394b"
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
