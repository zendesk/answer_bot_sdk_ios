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
                 .exact("2.1.4")),
        .package(name: "ZendeskMessagingSDK",
                 url: "https://github.com/zendesk/messaging_sdk_ios",
                 .exact("3.8.3"))
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
