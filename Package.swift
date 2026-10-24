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
            url: "https://github.com/kriskannan08/AppSecurityKit-iOS/releases/download/2.0.1/AppSecurityKit.xcframework.zip",
            checksum: "12491e081327b55233a2d94c4fdce21fc32dcb0e57ffbf5b0eac4e6ee82f51b6"
        )
    ]
)
