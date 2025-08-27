// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MTBBarcodeScanner",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "MTBBarcodeScanner",
            targets: ["MTBBarcodeScanner"]
        ),
    ],
    targets: [
        .target(
            name: "MTBBarcodeScanner",
            path: "Classes/ios",
            publicHeadersPath: ".",
            sources: [
                "."
            ],
            cSettings: [
                .headerSearchPath(".")
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("QuartzCore")
            ]
        )
    ]
)
