#
# Be sure to run `pod lib lint UIViewToolkit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIViewToolkit'
  s.version          = '0.3.5'
  s.summary          = 'UIViewToolkit is a bunch of extentions for UIView'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  UIViewToolkit can be use for constraints managements or UIViews modifications
                       DESC

  s.homepage         = 'https://github.com/AnthonyDiTom/UIView-Toolkit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Anthony Di Tomasso' => 'antho.dev@outlook.com' }
  s.source           = { :git => 'https://github.com/AnthonyDiTom/UIView-Toolkit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version = '5'
  s.source_files = 'Sources/*'
  
  # s.resource_bundles = {
  #   'UIViewToolkit' => ['UIViewToolkit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
