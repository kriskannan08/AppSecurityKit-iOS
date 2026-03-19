# SecurityKit

This repository exposes the released `AppSecurityKit.xcframework` as a reusable iOS dependency through Swift Package Manager.

## Contents

- `Package.swift`: Swift Package Manager manifest that points directly to the GitHub release zip
- `AppSecurityKit.podspec`: CocoaPods specification

## Swift Package Manager

The package uses the release artifact directly:

- URL: `https://github.com/kriskannan08/appSecurityKit_iOS/releases/download/1.2.1/AppSecurityKit.xcframework.zip`
- Checksum: `e8b11a821d496863cd768cf4554bb704aee1722f7165fae49afb5c2d69d63c62`

Add the package in Xcode or in `Package.swift`:

```swift
.package(url: "https://github.com/kriskannan08/AppSecurityKit-iOS.git", from: "1.2.1")
```

Then add the `AppSecurityKit` product to your target and import:

```swift
import AppSecurityKit
```

### Why Xcode may only show `Branch`

Swift Package Manager only enables version-based dependency rules when the package repository itself has a semantic version tag such as `1.2.1` or `v1.2.1`.

That check is done against this repository:

- `https://github.com/kriskannan08/AppSecurityKit-iOS.git`

It is not enough for the binary artifact URL to point at a GitHub release zip. If this package repo has no semantic version tags, Xcode will only offer branch-based rules.

To enable `Up to Next Major Version`, `Up to Next Minor Version`, or `Exact Version`, create and push a tag on this repo:

```bash
git tag 1.2.1
git push origin 1.2.1
```

## CocoaPods

Reference the podspec from a local path or published spec:

```ruby
pod "AppSecurityKit", :path => "/path/to/SecurityKit"
```

## Notes

- The linked binary contains iOS device (`arm64`) and simulator (`arm64`, `x86_64`) slices.
- The binary reports a minimum iOS version of `26.2`.
