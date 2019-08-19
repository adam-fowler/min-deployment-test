// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "min-deployment-test",
    platforms: [ .iOS(.v12) ],
    products: [
        .library( name: "min-deployment-test", targets: ["min-deployment-test"])
    ],
    dependencies: [
        .package(url: "https://github.com/adam-fowler/empty-package.git", .upToNextMinor(from: "4.0.0")),
    ],
    targets: [
        .target(name: "min-deployment-test", dependencies: ["empty-package"])
    ]
)
