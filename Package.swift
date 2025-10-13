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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.17.1-lite.framework.zip",
            checksum: "dbca7d4d76990ba4e34827abcb975f151c7f7ee9b624c904eb21055964dbf49f"
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
