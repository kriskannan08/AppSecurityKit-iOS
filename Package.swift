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
            path: "AppSecurityKit.xcframework"
        )
    ]
)
