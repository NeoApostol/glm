Pod::Spec.new do |s|
  s.name             = "glm"
  s.module_name      = "glm"
  s.version          = "0.9.7.1"
  s.summary          = "OpenGL Mathematics"
  s.description      = <<-DESC
                       Forked from http://glm.g-truc.net. Adds a Podspec to the repository.
                       DESC
  s.homepage         = "https://github.com/maxcampolo/glm"
  s.license          = 'see LICENSE.txt'
  s.authors          = { "Christophe Riccio" => "glm@g-truc.net", "Max Campolo" => "m.campolo91@gmail.com" }
  s.source           = { :git => "https://github.com/g-truc/glm.git", :tag => s.version.to_s }

  s.requires_arc     = false

  s.header_dir       = "glm"
  s.header_mappings_dir = "glm"
 
  s.library = 'c++'

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.source_files     = 'glm/**/*{.h,.hpp}'

  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/glm' }
  s.preserve_paths = 'glm/**/*{.h,.hpp,.inl}'
  s.public_header_files = 'glm/**/*{.h,.hpp,.inl}'
end
