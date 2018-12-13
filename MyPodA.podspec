Pod::Spec.new do |s|

  s.name         = "MyPodA"
  s.version      = "0.1.0"
  s.platform     = :ios
  s.ios.deployment_target = '11.0'
  s.requires_arc = true
  s.summary      = "MyPodA summary text here."
  s.description  = "MyPodA description text here."
  s.homepage     = "https://github.com/sergiitatsii/MyPodA"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Sergii Tatsii" => "sergiitatsii@gmail.com" }
  s.source       = { :git => 'https://github.com/sergiitatsii/MyPodA.git', :tag => "#{s.version}" }
  s.source_files = "MyPodA/**/*.{h,swift}"
  s.swift_version = "4.2"

end
