# SecurityKit

This repository packages the released `AppSecurityKit.xcframework` as a reusable iOS dependency.

## Contents

- `AppSecurityKit.xcframework`: Vendored binary framework from the upstream 1.2.1 release
- `Package.swift`: Swift Package Manager manifest
- `AppSecurityKit.podspec`: CocoaPods specification

## Swift Package Manager

Use the package locally from this folder, or push this repository and add it in Xcode:

```swift
.package(url: "https://github.com/kriskannan08/AppSecurityKit-iOS.git", branch: "main")
```

Then add the `AppSecurityKit` product to your target and import:

```swift
import AppSecurityKit
```

## CocoaPods

Reference the podspec from a local path or published spec:

```ruby
pod "AppSecurityKit", :path => "/path/to/SecurityKit"
```

## Notes

- The included binary contains iOS device (`arm64`) and simulator (`arm64`, `x86_64`) slices.
- The vendored binary reports a minimum iOS version of `26.2`.
