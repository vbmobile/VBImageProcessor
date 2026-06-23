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
            targets: ["AMAImageProcessor"]),
    ],
    targets: [
        .binaryTarget(
            name: "AMAImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/AMAImageProcessor/AMAImageProcessor-2.0.0.zip",
            checksum: "1358301244bd23270c83f32ce3de0a286fea4cef71ed4d69745cdbf32779de6b"
        )
    ],
    swiftLanguageVersions: [.v5]
)
