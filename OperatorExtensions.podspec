#
# Be sure to run `pod lib lint OperatorExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OperatorExtensions'
  s.version          = '0.1.1'
  s.summary          = 'Provides additional operators currently not supported in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Provides additional operators currently not supported in Swift.
  - Logical boolean operators (AND, OR, NOT, IMPL, XOR, XNOR, NAND, NOR)
  - Logical boolean assignment operators (&&=, ||=, ^^=, ...).
                       DESC

  s.homepage         = 'https://github.com/3ph/OperatorExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '3ph' => 'instantni.med@gmail.com' }
  s.source           = { :git => 'https://github.com/3ph/OperatorExtensions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'OperatorExtensions/Classes/**/*'

  # s.resource_bundles = {
  #   'OperatorExtensions' => ['OperatorExtensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
