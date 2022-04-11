#
# Be sure to run `pod lib lint Demo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Demo'
  s.version          = '0.0.1'
  s.summary          = 'A short description of Demo.'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://github.com/shauike/Demo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Condy' => 'ykj310@126.com' }
  s.source           = { :git => 'https://github.com/shauike/Demo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version    = '5.0'
  s.requires_arc     = true
  s.static_framework = true

#  s.dependency 'WhaleFull/Resources'
#  s.dependency 'WhaleFull/CTMediator'

  s.subspec 'Resources' do |xx|
    xx.resource_bundles = { 'Demo' => ['Sources/Resources/*.{xcassets,lproj}'] }
  end
  
  s.subspec 'Util' do |xx|
    xx.source_files = 'Sources/Util/*.swift'
  end

  s.subspec 'Api' do |xx|
    xx.source_files = 'Sources/Api/*.swift'
  end
  
  s.subspec 'Controller' do |xx|
    xx.source_files = 'Sources/Controller/*.swift'
  end
  
  s.subspec 'ViewModel' do |xx|
    xx.source_files = 'Sources/ViewModel/*.swift'
  end
  
  s.subspec 'View' do |xx|
    xx.source_files = 'Sources/View/*.swift'
  end
  
  s.subspec 'Model' do |xx|
    xx.source_files = 'Sources/Model/*.swift'
  end
  
  s.subspec 'CTMediator' do |xx|
    xx.source_files = 'Sources/CTMediator/*.swift'
  end

end