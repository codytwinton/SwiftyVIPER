Pod::Spec.new do |s|
  s.name = 'SwiftyVIPER'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'Swifty Interaction with VIPER'
  s.homepage = 'https://github.com/codytwinton/SwiftyVIPER'
  s.social_media_url = 'http://twitter.com/codytwinton'
  s.authors = { 'Cody Winton' => 'me@codywinton.com' }
  s.source = { :git => 'https://github.com/codytwinton/SwiftyVIPER.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Source/*.swift'
end
