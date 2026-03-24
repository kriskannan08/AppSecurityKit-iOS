# AppSecurityKit

**AppSecurityKit** is a modular, configurable security framework for iOS apps built with Swift and SwiftUI.

It provides runtime protections such as SSL pinning, jailbreak detection, anti-debugging, tamper detection, emulator detection, and Apple App Attest integration, all configurable per project.

This repository distributes the released `AppSecurityKit.xcframework` through Swift Package Manager and CocoaPods.

## Features

- Public key SSL pinning with primary and backup pins
- Jailbreak detection
- Anti-debug protection
- Emulator detection
- Tamper detection
- Apple App Attest integration
- Per-feature configuration
- Swift concurrency compatible

## Installation

### Swift Package Manager

Add the package in Xcode:

1. Open your project in Xcode.
2. Go to `File > Add Package Dependencies...`
3. Enter:

```text
https://github.com/kriskannan08/AppSecurityKit-iOS.git
```

4. Select the version you want to use.
5. Add the `AppSecurityKit` product to your app target.

You can also add it in your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/kriskannan08/AppSecurityKit-iOS.git", from: "1.2.1")
]
```

Then add `AppSecurityKit` to your target dependencies and import it where needed:

```swift
import AppSecurityKit
```

## Quick Start

### 1. Import

```swift
import AppSecurityKit
```

### 2. Configure

```swift
let config = SecurityConfiguration(
    jailbreakProtectionEnabled: true,
    debugProtectionEnabled: true,
    emulatorDetectionEnabled: false,
    tamperDetectionEnabled: true,
    appAttestationEnabled: false,
    sslPinningEnabled: true,
    pinnedPublicKeyHashes: [
        "PRIMARY_HASH_BASE64==",
        "BACKUP_HASH_BASE64=="
    ]
)
```

### 3. Initialize

```swift
@main
struct MyApp: App {
    let config = SecurityConfiguration(
        jailbreakProtectionEnabled: true,
        debugProtectionEnabled: true,
        emulatorDetectionEnabled: false,
        tamperDetectionEnabled: true,
        appAttestationEnabled: false,
        sslPinningEnabled: true,
        pinnedPublicKeyHashes: [
            "PRIMARY_HASH_BASE64==",
            "BACKUP_HASH_BASE64=="
        ]
    )

    init() {
        AppSecurityKit.start(with: config)
        SecurityManager.delegate = AppSecurityDelegate()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    AppSecurityKit.activateScreenProtection()
                }
        }
    }
}
```

## Security Events

You can listen to security violations using a delegate:

```swift
final class AppSecurityDelegate: SecurityEventDelegate {
    func onSecurityEvent(_ event: SecurityEvent) {
        print("Security Event:", event)

        switch event {
        case .sslPinningFailed:
            break
        case .debuggerDetected:
            break
        default:
            break
        }
    }
}
```

## Using Secured Networking

If SSL pinning is enabled, use `securedSession()`:

```swift
let session = SecurityManager.shared.securedSession()

let task = session.dataTask(with: url) { data, response, error in
    // Handle response
}
task.resume()
```

If pinning is disabled or no pins are configured, a standard `URLSession` is returned.

## SSL Pinning

AppSecurityKit uses public key pinning, which:

- Survives certificate renewals
- Supports fallback pins
- Allows seamless certificate rotation

To generate a public key hash:

```bash
openssl s_client -connect yourdomain.com:443 -servername yourdomain.com | openssl x509 -pubkey -noout | openssl rsa -pubin -outform der | openssl dgst -sha256 -binary | openssl base64
```

Use the resulting Base64 string in `pinnedPublicKeyHashes`.

## Apple App Attest

Supports:

- Key generation
- Secure storage in Keychain
- Attestation
- Assertion generation

Backend validation is still required using Apple's App Attest APIs.

## Notes

- The linked binary contains iOS device (`arm64`) and simulator (`arm64`, `x86_64`) slices.
- The binary reports a minimum iOS version of `26.2`.
