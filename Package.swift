// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SecurityKit",
    products: [
        .library(
            name: "AppSecurityKitFramework",
            targets: ["AppSecurityKitFramework"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppSecurityKitFramework",
            url: "https://github.com/kriskannan08/appSecurityKit_iOS/releases/download/v1.1.2/AppSecurityKit.xcframework.zip",
            checksum: "cb9d4f6a0fc654062b5be19e7764580cb67c7f54de5de9f31be8e46b92543925"
        )
    ]
)
