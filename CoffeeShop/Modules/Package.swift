// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Modules",
            targets: ["HomeView", "Core", "DrinkDetail","Coordinators"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "HomeView",
            dependencies: ["Core", "DrinkDetail"]),
        .target(
            name: "DrinkDetail",
            dependencies: ["Core"]),
        .target(
            name: "Core",   
            dependencies: []),
        .target(
            name: "Coordinators",
            dependencies: []),
        
    ]
)
