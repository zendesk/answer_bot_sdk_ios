// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskAnswerBotSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "ZendeskAnswerBotSDK",
            targets: [
              "ZendeskAnswerBotSDKTargets"
            ]
        )
    ],
    dependencies: [
        .package(name: "ZendeskAnswerBotProvidersSDK",
                 url: "https://github.com/zendesk/answer_bot_providers_sdk_ios",
                 from: "2.1.3"),
        .package(name: "ZendeskMessagingSDK",
                 url: "https://github.com/zendesk/messaging_sdk_ios",
                 from: "3.8.2")
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskAnswerBotSDK",
            path: "AnswerBotSDK.xcframework"
        ),
        .target(name: "ZendeskAnswerBotSDKTargets",
                dependencies: [
                    .target(name: "ZendeskAnswerBotSDK"),
                    .product(name: "ZendeskAnswerBotProvidersSDK", package: "ZendeskAnswerBotProvidersSDK"),
                    .product(name: "ZendeskMessagingSDK", package: "ZendeskMessagingSDK")
                ],
                path: "Sources"
        )
    ]
)
