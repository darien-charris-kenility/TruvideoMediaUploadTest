// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TruvideoMediaUploadTest",
    products: [
        .library(
            name: "TruvideoMediaUploadTest",
            targets: ["TruvideoSdkMediaTargets"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/devicekit/DeviceKit.git", from: "5.0.0"),
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", from: "4.2.0")
    ],
    targets: [
        .binaryTarget(
            name: "MediaUploadBinary",
            url: "https://github.com/darien-charris-kenility/TruvideoMediaUploadTest/releases/download/0.1.0/TruvideoMediaUploadTest.xcframework.zip",
            checksum: "95c85403cd91bc44e00685ac4f4fb2d5dfe0e4e590cbe3f1df7bea356a1af19f"
        ),
        .target(
            name: "TruvideoSdkMediaTargets",
            dependencies: [
                "MediaUploadBinary",
                .product(name: "DeviceKit", package: "DeviceKit"),
                .product(name: "KeychainAccess", package: "KeychainAccess")
            ],
            path: "Sources"
        ),
    ]
)
