// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SecurityKit",
    products: [
        .library(
            name: "AppSecurityKit",
            targets: ["AppSecurityKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppSecurityKit",
            url: "https://github.com/kriskannan08/appSecurityKit_iOS/releases/download/1.3.0/AppSecurityKit.xcframework.zip",
            checksum: "35b4a83be56520d0034dea9bd79741c41b6c51ccb76dd77077f81c8ad865a363"
        )
    ]
)
