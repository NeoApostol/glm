Pod::Spec.new do |s|
  s.name             = "glm"
  s.version          = "0.9.4.6"
  s.summary          = "OpenGL Mathematics"
  s.description      = <<-DESC
                       Forked from http://glm.g-truc.net
                       DESC
  s.homepage         = "https://github.com/maxcampolo/glm"
  s.license          = 'see LICENSE.txt'
  s.authors          = { "Max Campolo" => "mc@mc.com" }
  s.source           = { :git => "https://github.com/maxcampolo/glm.git", :tag => s.version.to_s }

  s.requires_arc     = false

  s.header_dir       = "glm"

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.source_files     = 'glm/**/*{.h,.hpp,.inl}'

  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/glm' }
  s.preserve_paths = 'glm/**/*{.h,.hpp,.inl}'
end
