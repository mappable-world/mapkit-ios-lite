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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.22.0-lite.framework.zip",
            checksum: "111ae7ee87d58aba3b1b8f8279b74d1a3eccd80ba814f236a9842dbbc60c42c7"
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
