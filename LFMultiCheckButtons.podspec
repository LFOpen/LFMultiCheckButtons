#
#  Be sure to run `pod spec lint LFMultiCheckButtons.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "LFMultiCheckButtons"
  s.version      = "0.0.1"
  s.summary      = "一个可自定义按钮样式的多选按钮组."
  s.description  = <<-DESC
                   一个可自定义按钮样式的多选按钮组.
                   DESC

  s.homepage     = "https://github.com/LFOpen/LFMultiCheckButtons"
  s.license      = "MIT"
  s.author             = { "archerLj" => "lj0011977@163.com" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/LFOpen/LFMultiCheckButtons.git", :tag => "#{s.version}" }
  s.source_files  = "LFMultiCheckButtons/LFMultiCheckButtons/*.{h,m}"
  s.requires_arc = true
end
