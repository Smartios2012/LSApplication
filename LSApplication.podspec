Pod::Spec.new do |s|
  s.name         = "LSApplication"
  s.version      = "0.0.9"
  s.summary      = "Get all app info."
  s.description  = <<-DESC
                       Get Phone Apps , No attempt is not available through store app
                       DESC

  s.homepage     = "https://github.com/aimobier/LSApplication"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Mister" => "200739491@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/aimobier/LSApplication.git", :tag => "#{s.version}" }
  s.source_files  = "Classes/LSApplicationProxy.h","Classes/LSApplicationWorkspace.h","Classes/LSBundleProxy.h","Classes/LSResourceProxy.h"
  s.frameworks  = "MobileCoreServices","Foundation"
end
