Pod::Spec.new do |s|
  s.name         = "LSApplication"
  s.version      = "0.1.1"
  s.summary      = "Get all app info."
  s.description  = <<-DESC
                       Get Phone Apps , No attempt is not available through store app
                       DESC

  s.homepage     = "https://github.com/aimobier/LSApplication"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "aimobier" => "200739491@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/aimobier/LSApplication.git", :tag => "#{s.version}" }
  s.source_files = "Classes/*.h"
  s.requires_arc = true
  s.frameworks   = "MobileCoreServices"
end
