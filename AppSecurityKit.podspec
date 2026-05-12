Pod::Spec.new do |spec|
  spec.name = "AppSecurityKit"
  spec.version = "1.3.0"
  spec.summary = "Vendored AppSecurityKit binary framework for iOS."
  spec.description = <<-DESC
  AppSecurityKit is distributed as a prebuilt XCFramework for iOS device and simulator builds.
  DESC
  spec.homepage = "https://github.com/kriskannan08/appSecurityKit_iOS"
  spec.license = { :type => "Custom", :text => "See upstream repository for license details." }
  spec.author = { "kriskannan08" => "support@example.com" }
  spec.source = { :http => "https://github.com/kriskannan08/appSecurityKit_iOS/releases/download/1.3.0/AppSecurityKit.xcframework.zip" }
  spec.platform = :ios, "26.2"
  spec.swift_versions = ["5.9"]
  spec.vendored_frameworks = "AppSecurityKit.xcframework"
  spec.preserve_paths = "AppSecurityKit.xcframework"
end
