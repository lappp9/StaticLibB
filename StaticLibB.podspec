Pod::Spec.new do |spec|
  spec.name         = 'StaticLibB'
  spec.version      = '0.0.5'
  spec.license      = { :type => 'BSD' }
  spec.authors      = { 'Luke Parham' => 'dont@wory.aboutit' }
  spec.summary      = 'Test'
  spec.source       = { :git => 'https://github.com/lappp9/StaticLibB.git', :tag => '0.0.5' }
  spec.homepage     = 'https://google.com/'
  spec.source_files = 'StaticLibB/**/*', 
  spec.preserve_paths = 'include/**/*'

  spec.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-lObjC -lstdc++',
#    'CLANG_CXX_LIBRARY' => 'libstdc++',
#    'ONLY_ACTIVE_ARCH' => 'NO'
  }
  spec.libraries = "stdc++"

  spec.vendored_libraries = 'lib/libStaticLibA.a'
end

