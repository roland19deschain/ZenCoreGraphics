Pod::Spec.new do |s|
  s.name             = 'ZenCoreGraphics'
  s.version          = '1.0.0'
  s.swift_version    = '5.0'
  s.summary          = 'ZenCoreGraphics is a collection of extensions and functions for CoreGraphics framework.'
  s.description      = <<-DESC
ZenCoreGraphics is a collection of convenient and concise extensions and functions for CoreGraphics framework.
                       DESC
  s.homepage         = 'https://github.com/roland19deschain/ZenCoreGraphics'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alexey Roik' => 'roland19deschain@gmail.com' }
  s.source           = { :git => 'https://github.com/roland19deschain/ZenCoreGraphics.git', :tag => s.version }
  s.requires_arc     = true
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.source_files     = 'ZenCoreGraphics/**/*{swift}'
end
