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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.14.0-lite.framework.zip",
            checksum: "94b7e8883b13abdcec64b456e3542a6e038f27c3d0b947755c41972eb6efdd62"
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
