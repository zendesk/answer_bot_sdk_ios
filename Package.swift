// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "ZendeskAnswerBotSDK",
    platforms: [
        .iOS(.v11)
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
                 .exact("4.0.0")),
        .package(name: "ZendeskMessagingSDK",
                 url: "https://github.com/zendesk/messaging_sdk_ios",
                 .exact("5.0.0"))
    ],
    targets: [
        .binaryTarget(
            name: "AnswerBotSDK",
            path: "AnswerBotSDK.xcframework"
        ),
        .target(name: "ZendeskAnswerBotSDKTargets",
                dependencies: [
                    .target(name: "AnswerBotSDK"),
                    .product(name: "ZendeskAnswerBotProvidersSDK", package: "ZendeskAnswerBotProvidersSDK"),
                    .product(name: "ZendeskMessagingSDK", package: "ZendeskMessagingSDK")
                ],
                path: "Sources"
        )
    ]
)
