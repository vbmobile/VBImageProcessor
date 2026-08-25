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
        .package(url: "https://github.com/vbmobile/AMAUtils", exact: "3.0.5"),
    ],
    targets: [
        .binaryTarget(
            name: "AMAImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMAImageProcessor/AMAImageProcessor-2.0.5.zip",
            checksum: "ca38c0ea04c64beafb514e8117c72f04d70bdf8e5bf933effcea76f76f990f40"
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
