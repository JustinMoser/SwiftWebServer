// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift_web_server",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "1.0.0"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.0.0"),
        .package(url: "https://github.com/IBM-Swift/Kitura-CouchDB.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "swift_web_server_lib", dependencies: ["Kitura", "CouchDB", "HeliumLogger"]),
        .target(name: "swift_web_server_app", dependencies: ["swift_web_server_lib"])
    ]
)