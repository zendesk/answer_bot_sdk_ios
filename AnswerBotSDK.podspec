Pod::Spec.new do |s|
  s.name         = "AnswerBotSDK"
  s.version      = "1.0.0-EAP2"
  s.summary      = "AnswerBotSDK #{s.version.to_s}"
  s.homepage     = "https://github.com/zendesk/answer_bot_sdk_ios"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
    ZendeskSDK
    Created by Zendesk on  3/30/2017
    Copyright (c) 2017 Zendesk. All rights reserved.
    By downloading or using the Zendesk Mobile SDK, You agree to the Zendesk Master
    Subscription Agreement https://www.zendesk.com/company/customers-partners/#master-subscription-agreement and Application Developer and API License
    Agreement https://www.zendesk.com/company/customers-partners/#application-developer-api-license-agreement and
    acknowledge that such terms govern Your use of and access to the Mobile SDK.
    LICENSE
  }
  s.author       = 'Zendesk'
  s.source       = { :git => "https://github.com/zendesk/answer_bot_sdk_ios.git", :tag => s.version }
  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.swift_version = '4.2'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)', 'CLANG_ENABLE_MODULES' => 'YES', 'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES' }

  s.dependency 'ZendeskSDK', '2.2.0'

  # Using subspecs to support installation without Localization part
  s.default_subspecs = 'SDK', 'CommonUI', 'Providers'

  s.subspec 'SDK' do |ss|
    ss.platform = :ios, '9.0'
    ss.ios.vendored_frameworks = "AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotSDK.framework"
    ss.preserve_paths = "AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotSDK.framework"
    ss.resources = ["AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotStrings.bundle"]
    ss.dependency 'AnswerBotSDK/Providers'
    ss.dependency 'AnswerBotSDK/CommonUI'
  end

  s.subspec 'CommonUI' do |ss|
    ss.platform = :ios, '9.0'
    ss.ios.vendored_frameworks = "AnswerBotSDK/#{s.swift_version.to_s}/CommonUISDK.framework"
    ss.preserve_paths = "AnswerBotSDK/#{s.swift_version.to_s}/CommonUISDK.framework"
    ss.resources = ["AnswerBotSDK/#{s.swift_version.to_s}/CommonUIStrings.bundle"]
  end

  s.subspec 'Providers' do |ss|
    ss.platform = :ios, '9.0'
    ss.ios.vendored_frameworks = "AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotProvidersSDK.framework"
    ss.preserve_paths = "AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotProvidersSDK.framework"
    ss.resources = ["AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotProvidersStrings.bundle"]
  end
end
