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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.26.0-lite.framework.zip",
            checksum: "8032659a3cf9aaa43b38079f9c900f4ae14563b1bab3b10f4db84e6fc8dffb67"
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
                .linkedFramework("NetworkExtension"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
