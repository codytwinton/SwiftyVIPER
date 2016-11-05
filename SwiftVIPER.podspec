Pod::Spec.new do |s|
  s.name = 'SwiftVIPER'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'Swifty VIPER Interaction'
  s.homepage = 'https://github.com/codytwinton/SwiftVIPER'
  s.social_media_url = 'http://twitter.com/codytwinton'
  s.authors = { 'Cody Winton' => 'me@codywinton.com' }
  s.source = { :git => 'https://github.com/codytwinton/SwiftVIPER.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Source/*.swift'
end
