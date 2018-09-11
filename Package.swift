// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "Html",
  products: [
    .library(
      name: "Html",
      targets: ["Html"]),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", .revision("69b48c8")),
  ],
  targets: [
    .target(
      name: "Html",
      dependencies: []),
    .testTarget(
      name: "HtmlTests",
      dependencies: ["Html", "SnapshotTesting"]),
    ]
)
