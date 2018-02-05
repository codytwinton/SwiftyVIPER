Pod::Spec.new do |s|
	s.name = 'SwiftyVIPER'
	s.version = '2.0'
	s.license = { :type => 'MIT', :file => 'LICENSE' }
	s.summary = 'Swifty Interaction with VIPER'
	s.homepage = 'https://github.com/codytwinton/SwiftyVIPER'
	s.source = { :git => 'https://github.com/codytwinton/SwiftyVIPER.git', :tag => s.version.to_s }

	s.source_files = 'Sources/*.swift'
	s.ios.deployment_target = '11.0'
	s.tvos.deployment_target = '11.0'
	s.frameworks = 'UIKit'
	s.requires_arc = true

	s.social_media_url = 'http://twitter.com/codytwinton'
	s.authors = { 'Cody Winton' => 'cody.t.winton@gmail.com' }
end
