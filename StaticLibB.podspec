Pod::Spec.new do |spec|
  spec.name         = 'StaticLibB'
  spec.version      = '0.0.5'
  spec.license      = { :type => 'BSD' }
  spec.authors      = { 'Luke Parham' => 'dont@wory.aboutit' }
  spec.summary      = 'Test'
  spec.source       = { :git => 'https://github.com/lappp9/StaticLibB.git', :tag => '0.0.5' }
  spec.homepage     = 'https://google.com/'
  spec.source_files = 'StaticLibB/**/*', 
  spec.private_header_files = 'include/**/*'
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  spec.vendored_libraries = 'lib/libStaticLibA.a'

  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++11',
    'CLANG_CXX_LIBRARY' => 'libstdc++',
  }
end
