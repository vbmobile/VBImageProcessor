// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VBImageProcessor",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VBImageProcessor",
            targets: ["VBImageProcessor"]),
    ],
    targets: [
        .binaryTarget(
            name: "VBImageProcessor",
            url: "https://vbmobileidstorage.blob.core.windows.net/ios/MobileIdSDKiOS/VBImageProcessor/VBImageProcessor-1.1.2.zip",
            checksum: "52da534e5294759a95be7cec9294f7d93aaff7e6f7f9ea6000b8410bfe801e2f"
        )
    ],
    swiftLanguageVersions: [.v5]
)
