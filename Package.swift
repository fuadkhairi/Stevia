// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Stevia",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(name: "Stevia", targets: ["Stevia"])
    ],
    targets: [
        .target(
            name: "Stevia",
            path: "Sources",
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .unsafeFlags(["-target", "arm64-apple-ios12.0"])
            ]
        ),
        .testTarget(
            name: "SteviaTests",
            dependencies: ["Stevia"],
            swiftSettings: [
                .unsafeFlags(["-target", "arm64-apple-ios12.0"])
            ]
        )
    ]
)
