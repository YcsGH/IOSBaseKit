#
# Be sure to run `pod lib lint IOSBaseKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IOSBaseKit'
  s.version          = '0.2.1'
  s.summary          = 'iOS开发基础组件库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'an iOS base kit for your new project'

  s.homepage         = 'http://www.jianshu.com/u/cb1e9f287eb5'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yangcs' => '1214099793@qq.com' }
  s.source           = { :git => 'https://github.com/YcsGH/IOSBaseKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'IOSBaseKit/Classes/**/*'
  s.public_header_files = 'IOSBaseKit/Classes/**/*.h'

end
