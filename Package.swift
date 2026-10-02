// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SAMKeychain",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v5),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "SAMKeychain",
            targets: ["SAMKeychain"]
        ),
    ],
    targets: [
        .target(
            name: "SAMKeychain",
            path: ".",
            exclude: [
                ".gitignore",
                "LICENSE",
                "Readme.markdown",
                "SAMKeychain.podspec",
                "SAMKeychain.xcodeproj",
                "Support/Info.plist",
                "Support/Tests-Info.plist",
                "Tests",
            ],
            sources: ["Sources"],
            resources: [
                .copy("Support/SAMKeychain.bundle"),
            ],
            publicHeadersPath: "Sources",
            linkerSettings: [
                .linkedFramework("Security"),
            ]
        ),
    ]
)
