Pod::Spec.new do |s|
  s.name         = "HSXCAPKit-3rdparty-libs"
  s.version      = "0.1.1"
  s.summary      = "CAPKit-3rdparty-libs library."
  s.description  = <<-DESC
                   libevent, openssl, libcurl, tor, c-ares, mcrypt, mhash, sqlcipher, lame.
                   DESC
  s.homepage     = "https://github.com/longzl/HSXCAPKit-3rdparty-libs"
  s.license      = "MIT"
  s.author       = { "longzhili" => "longzhili2005@126.com" }
  s.platform     = :ios, "11.0.0"
  s.source       = { :git => "https://github.com/longzl/HSXCAPKit-3rdparty-libs.git", :tag => "v#{s.version}" }
  s.libraries     = "c++"
  s.header_mappings_dir = "src"
  s.public_header_files = 'src/*.h', 'src/**/*.{h}'
  s.source_files  = 'src/*.{h}', 'src/**/*.{h}'
  s.preserve_paths = 'src/*.{h,c}', 'src/**/*.{h}'
  s.compiler_flags  = '-DSQLITE_HAS_CODEC'

  s.ios.vendored_libraries = 'lib/*.a'
  s.requires_arc = false

end
