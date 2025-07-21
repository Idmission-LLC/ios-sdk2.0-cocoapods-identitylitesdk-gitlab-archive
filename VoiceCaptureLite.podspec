Pod::Spec.new do |spec|


  spec.name                   = "VoiceCaptureLite"
  spec.version                = "10.1.11.2.3"
  spec.summary                = "VoiceCaptureLite lets user add VoiceCaptureLiteSDK in their project"
  spec.description            = <<-DESC 
                                VoiceCaptureLite helps user to add VoiceCaptureLiteSDK in their project.
                                On integrating VoiceCaptureLiteSDK user will be able to Capture Voice.
                                Also able to use verious service ID mentined in Documentation.
                               DESC
  
  spec.homepage                = "https://www.idmission.com/en/home"
  spec.license                 = { :type => "MIT", :file => "LICENSE" }
  spec.author                  = { "Idmission LLC" => "amol.deshmukh@idmission.com" }
  spec.source                  = { :git => "https://cocoapods:EG8mv3fKkV4F-_CvVPTJ@gitlab.idmission.com/apps/sdk2.0/ios/cocoapods/identitylitesdk2.0.git", :tag => "#{spec.version}"}
  spec.platform                = :ios
  spec.ios.deployment_target   = '13.0'
  spec.swift_version           = "5"
  spec.pod_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.ios.vendored_frameworks = 'VoiceCaptureLite.xcframework'

end