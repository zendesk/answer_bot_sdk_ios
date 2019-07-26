Pod::Spec.new do |s|
  s.name         = "AnswerBotSDK"
  s.version      = "1.0.1"
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
  s.platform     = :ios, '9.3'
  s.requires_arc = true
  s.swift_version = '5.0.1'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)', 'CLANG_ENABLE_MODULES' => 'YES', 'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES' }

  s.dependency 'ZendeskSDK', '3.0.1'

  # Using subspecs to support installation without Localization part
  s.default_subspecs = 'SDK', 'Providers'

  s.subspec 'SDK' do |ss|
    ss.platform = :ios, '9.3'
    ss.ios.vendored_frameworks = "AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotSDK.framework"
    ss.preserve_paths = "AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotSDK.framework"
    ss.dependency 'AnswerBotSDK/Providers'
  end

  s.subspec 'Providers' do |ss|
    ss.platform = :ios, '9.3'
    ss.ios.vendored_frameworks = "AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotProvidersSDK.framework"
    ss.preserve_paths = "AnswerBotSDK/#{s.swift_version.to_s}/AnswerBotProvidersSDK.framework"
  end
end
