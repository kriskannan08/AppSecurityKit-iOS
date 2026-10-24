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
            url: "https://github.com/kriskannan08/AppSecurityKit-iOS/releases/download/2.0.0/AppSecurityKit.xcframework.zip",
            checksum: "2e3e5d95b1cc480a2674315b6d7e964ecacb77c40f7938a8df2ce39190d7be6c"
        )
    ]
)
