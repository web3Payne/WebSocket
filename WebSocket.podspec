Pod::Spec.new do |s|
  s.name             = 'WebSocket'
  s.version          = '0.1.0'
  s.summary          = 'A short description of WebSocket.'
  s.homepage         = 'https://github.com/quickbirdstudios/BloggerBird'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Quick Bird' => 'mascot@quickbirdstudios.com' }
  s.source           = { :git => 'https://github.com/quickbirdstudios/BloggerBird.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.source_files = 'Sources/WebSocket/**/*'
end
