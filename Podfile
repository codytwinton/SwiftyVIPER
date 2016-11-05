
# Cocoapod
source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!
platform :ios, '9.0'
inhibit_all_warnings!


def shared_pods
	pod 'SnapKit', '~> 3.0'
end

target 'SwiftyVIPER' do
	shared_pods
end

target 'SwiftyVIPERTests' do
	shared_pods
end

#post_install do |installer|
#	installer.pods_project.targets.each do |target|
#		if target.name.include?("Pods-")
#			require 'fileutils'
#			FileUtils.cp_r('Pods/Target Support Files/' + target.name + '/' + target.name + '-acknowledgements.plist', 'SwiftyVIPER/' + target.name + '-acknowledgements.plist', :remove_destination => true)
#		end
#	end
#end
