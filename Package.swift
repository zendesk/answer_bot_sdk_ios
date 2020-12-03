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
                 url: "https://github.com/zendesk/answer_bot_providers_sdk_ios/releases/download/2.1.2/AnswerBotProvidersSDK.xcframework.zip",
                 from: "2.1.2"),
        .package(name: "ZendeskSupportProvidersSDK",
                 url: "https://github.com/zendesk/support_providers_sdk_ios/releases/download/5.2.0/SupportProvidersSDK.xcframework.zip",
                 from: "5.2.0"),
        .package(name: "ZendeskMessagingSDK",
                 url: "https://github.com/zendesk/messaging_sdk_ios/releases/download/3.8.1/MessagingSDK.xcframework.zip",
                 from: "3.8.1")
    ],
    targets: [
        .binaryTarget(
            name: "ZendeskAnswerBotSDK",
            url: "https://github.com/zendesk/answer_bot_sdk_ios/releases/download/2.1.2/AnswerBotSDK.xcframework.zip",
            checksum: "5704de9b4c9da0c01a9e9ed44a3d704c9ddbb32e20b2748b228d1e83e2d316e3"
        ),
        .target(name: "ZendeskAnswerBotSDKTargets",
                dependencies: [
                    .target(name: "ZendeskAnswerBotSDK"),
                    .product(name: "ZendeskAnswerBotProvidersSDK", package: "ZendeskAnswerBotProvidersSDK"),
                    .product(name: "ZendeskSupportProvidersSDK", package: "ZendeskSupportProvidersSDK"),
                    .product(name: "ZendeskMessagingSDK", package: "ZendeskMessagingSDK")
                ],
                path: "Sources"
        )
    ]
)
