// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TruvideoMediaUploadTest",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TruvideoMediaUploadTest",
            targets: ["TruvideoSdkMediaTargets"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "TruvideoMediaUploadTest",
            url: "https://github.com/darien-charris-kenility/TruvideoMediaUploadTest/releases/download/0.1.0/TruvideoMediaUploadTest.xcframework.zip",
            checksum: "95c85403cd91bc44e00685ac4f4fb2d5dfe0e4e590cbe3f1df7bea356a1af19f"
        ),
        .target(
            name: "TruvideoSdkMediaTargets",
            path: "Sources"
        ),
    ]
)
