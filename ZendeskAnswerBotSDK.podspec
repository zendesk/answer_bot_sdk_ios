Pod::Spec.new do |s|
  s.name         = "ZendeskAnswerBotSDK"
  s.version      = "2.0.2"
  s.summary      = "ZendeskAnswerBotSDK #{s.version.to_s}"
  s.homepage     = "https://developer.zendesk.com/embeddables"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
    ZendeskSDKs
    Created by Zendesk on  1/09/2020
    Copyright (c) 2020 Zendesk. All rights reserved.
    By downloading or using the Zendesk Mobile SDK, You agree to the Zendesk Master
    Subscription Agreement https://www.zendesk.com/company/customers-partners/#master-subscription-agreement and Application Developer and API License
    Agreement https://www.zendesk.com/company/customers-partners/#application-developer-api-license-agreement and
    acknowledge that such terms govern Your use of and access to the Mobile SDK.
    LICENSE
  }
  s.author       = 'Zendesk'
  s.platform     = :ios, '10.0'
  s.requires_arc = true
  s.swift_version = '5.1.3'
  s.source       = { :git => "https://github.com/zendesk/answer_bot_sdk_ios.git", :tag => s.version }
  s.vendored_frameworks = 'AnswerBotSDK.framework'
  s.dependency 'ZendeskAnswerBotProvidersSDK', '~> 2.0.0'
  s.dependency 'ZendeskMessagingSDK', '~> 3.0.0'
end