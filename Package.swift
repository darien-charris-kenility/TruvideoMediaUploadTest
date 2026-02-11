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
    targets: [
        .binaryTarget(
            name: "MediaUploadBinary",
            url: "https://github.com/darien-charris-kenility/TruvideoMediaUploadTest/releases/download/0.1.6/MediaUpload.xcframework.zip",
            checksum: "bd222321b004d6b8065fa3c57322808d0caf7d69c3de68c4df780e00c3a1d9db"
        ),
        .target(
            name: "TruvideoSdkMediaTargets",
            dependencies: ["MediaUploadBinary",],
            path: "Sources"
        ),
    ]
)
