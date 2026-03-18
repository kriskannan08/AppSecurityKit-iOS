# SecurityKit

This repository exposes the released `AppSecurityKit.xcframework` as a reusable iOS dependency through Swift Package Manager.

## Contents

- `Package.swift`: Swift Package Manager manifest that points directly to the GitHub release zip
- `AppSecurityKit.podspec`: CocoaPods specification

## Swift Package Manager

The package uses the release artifact directly:

- URL: `https://github.com/kriskannan08/appSecurityKit_iOS/releases/download/v1.1.2/AppSecurityKit.xcframework.zip`
- Checksum: `cb9d4f6a0fc654062b5be19e7764580cb67c7f54de5de9f31be8e46b92543925`

Add the package in Xcode or in `Package.swift`:

```swift
.package(url: "https://github.com/your-org/SecurityKit.git", branch: "main")
```

Then add the `AppSecurityKitFramework` product to your target and import:

```swift
import AppSecurityKitFramework
```

## CocoaPods

Reference the podspec from a local path or published spec:

```ruby
pod "AppSecurityKit", :path => "/path/to/SecurityKit"
```

## Notes

- The linked binary contains iOS device (`arm64`) and simulator (`arm64`, `x86_64`) slices.
- The binary reports a minimum iOS version of `26.2`.
