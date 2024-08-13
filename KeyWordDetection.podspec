#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.name         = "KeyWordDetection"
  spec.version      = "0.0.1"
  spec.summary = 'A comprehensive framework for detecting keywords in audio input.'
  spec.description  = File.read(File.join(File.dirname(__FILE__), 'DESCRIPTION.txt'))
  spec.homepage     = "https://davoice.io"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "Ofer Fryman" => "ofer@davoice.io" }
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/frymanofer/KeyWordDetectionIOSFramework.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = 'KeyWordDetection.xcframework'
  spec.swift_versions = ['5.0']

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.ios.deployment_target = '13.4'

  spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

  spec.dependency 'ios-voice-processor', '~> 1.1.0'
  spec.dependency 'onnxruntime-objc'

  spec.static_framework = true 

end
