// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "min-deployment-test",
    platforms: [ .iOS(.v12) ],
    products: [
        .library( name: "min-deployment-test", targets: ["min-deployment-test"])
    ],
    dependencies: [
        .package(url: "https://github.com/PerfectlySoft/Perfect-INIParser.git", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
        .target(name: "min-deployment-test", dependencies: ["INIParser"])
    ]
)
