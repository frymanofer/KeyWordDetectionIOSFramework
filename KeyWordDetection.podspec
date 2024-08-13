#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.name         = "KeyWordDetection"
  spec.version      = "0.0.1"
  spec.summary = 'A comprehensive framework for detecting keywords in audio input.'

  # This description is used to generate tags and improve search results.
  spec.description  = File.read(File.join(File.dirname(__FILE__), 'DESCRIPTION.txt'))

  spec.homepage     = "https://davoice.io"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.author             = { "Ofer Fryman" => "ofer@davoice.io" }
  # Or just: spec.author    = "Ofer Fryman"
  # spec.authors            = { "Ofer Fryman" => "ofer@davoice.io" }
  # spec.social_media_url   = "https://twitter.com/Ofer Fryman"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"
  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  # spec.visionos.deployment_target = "1.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source       = { :git => "https://github.com/frymanofer/KeyWordDetectionIOSFramework.git", :tag => "#{spec.version}" }

  spec.vendored_frameworks = 'KeyWordDetection.xcframework'

  spec.swift_versions = ['5.0']


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

spec.ios.deployment_target = '13.4'

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

  spec.dependency 'ios-voice-processor', '~> 1.1.0'
  spec.dependency 'onnxruntime-objc'

  spec.static_framework = true 

end
