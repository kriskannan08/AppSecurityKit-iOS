// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AppSecurityKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppSecurityKit",
            targets: ["AppSecurityKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppSecurityKit",
            url: "https://github.com/kriskannan08/AppSecurityKit-iOS/releases/download/2.0.2/AppSecurityKit.xcframework.zip",
            checksum: "87c5a414018b690a945c113a1de3cd4356cfb5276f0b3ace4e85aeac8b872b89"
        )
    ]
)
