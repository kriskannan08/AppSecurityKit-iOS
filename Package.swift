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
            url: "https://github.com/kriskannan08/appSecurityKit_iOS/releases/download/1.2.1/AppSecurityKit.xcframework.zip",
            checksum: "e8b11a821d496863cd768cf4554bb704aee1722f7165fae49afb5c2d69d63c62"
        )
    ]
)
