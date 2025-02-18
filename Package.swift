// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "MappableMobileLite",
    defaultLocalization: "en",
    platforms: [.iOS("12.0")],
    products: [
        .library(
            name: "MappableMobileLite",
            type: .static,
            targets: [
                "MappableMobileLite",
                "MappableMobileLiteResources"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MappableMobileLite",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.11.0-lite.framework.zip",
            checksum: "c1c18f17b1d166e506fc2d3b79a226945c96d028c538ff900c462976d91b55d8"
        ),
        .target(
            name: "MappableMobileLiteResources",
            path: "Resources",
            linkerSettings: [
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("UIKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("DeviceCheck"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)