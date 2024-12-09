// swift-tools-version:5.8
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://api.github.com/repos/touchlab/KMMBridgeAndroidDevFlow/releases/assets/212031319.zip"
let remoteKotlinChecksum = "1e6446b65302c2a31277873031854ba12f616b508870674e51e9e62e29fa5fce"
let packageName = "kmplib"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)