
post_install do |installer|
 installer.pods_project.targets.each do |target|
  target.build_configurations.each do |config|
   config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
  end
 end
end
platform :ios, '13.0'

target 'SprayPost' do
  
  use_frameworks!

  # Pods for SprayPost
  pod 'CLTypingLabel'
	
# Add the Firebase pod for Google Analytics
# pod 'FirebaseAnalytics'

# For Analytics without IDFA collection capability, use this pod instead
pod 'Firebase/AnalyticsWithoutAdIdSupport'

# Add the pods for any other Firebase products you want to use in your app
# For example, to use Firebase Authentication and Cloud Firestore
pod 'FirebaseAuth'
pod 'FirebaseFirestore'


end
