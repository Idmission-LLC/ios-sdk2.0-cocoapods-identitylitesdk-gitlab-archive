Pod::Spec.new do |spec|


  spec.name                   = "IDentityLiteSDK2.0"
  spec.version                = "11.1.13.2.3"
  spec.summary                = "IDentityLiteSDK lets user add IDentityLiteSDK in their project"
  spec.description            = <<-DESC 
                                IDentityLiteSDK helps user to add IDentityLiteSDK in their project.
                                On integrating IDentityLiteSDK user will be able to Capture Face & ID.
                                Also able to use various service ID mentioned in Documentation.
                               DESC
  
  spec.homepage                = "https://www.idmission.com/en/home"
  spec.license                 = { :type => "MIT", :file => "LICENSE" }
  spec.author                  = { "Idmission LLC" => "amol.deshmukh@idmission.com" }
  spec.source                  = { :git => "https://cocoapods:EG8mv3fKkV4F-_CvVPTJ@gitlab.idmission.com/apps/sdk2.0/ios/cocoapods/identitylitesdk2.0.git", :tag => "#{spec.version}"}
  spec.platform                = :ios
  spec.ios.deployment_target   = '15.6'
  spec.swift_version           = "5"
  spec.pod_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.ios.vendored_frameworks = [ 'IDentityLiteSDK.xcframework', 'SelfieCaptureLite.xcframework', 'IDCaptureLite.xcframework' ]
  # spec.dependency 'SelfieCaptureLite', "'#{spec.version}'"
  # spec.dependency 'IDCaptureLite', "'#{spec.version}'"

end