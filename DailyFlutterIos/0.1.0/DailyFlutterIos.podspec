

Pod::Spec.new do |s|
  s.name              = 'DailyFlutterIos'
  s.version           = '0.1.0'
  s.summary           = 'Flutter plugin for Daily.'
  s.description       = <<-DESC
Flutter plugin for Daily.

Not to be used directly, see https://pub.dev/packages/daily_flutter
                       DESC
  s.homepage          = 'https://daily.co'
  s.documentation_url = "https://docs.daily.co"
  s.license           = { :type => 'proprietary' }
  s.author            = { 'Daily' => 'help@daily.co' }
  s.platform          = :ios, '13.0'
  s.swift_version     = '5.0'

  # Dependencies
  s.dependency 'Flutter'
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'GLKit', 'Network', 'VideoToolbox'
  s.libraries = 'c++'

  #s.source = { :http => "https://daily.co/sdk/daily-flutter-ios-#{s.version}.zip", :flatten => false }
  s.source = { :http => "localhost:8000/daily_flutter.xcframework.zip", :type => :zip}
  s.vendored_frameworks = "daily_flutter.xcframework"
end
