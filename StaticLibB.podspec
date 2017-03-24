Pod::Spec.new do |spec|
  spec.name         = 'StaticLibB'
  spec.version      = '0.0.4'
  spec.license      = { :type => 'BSD' }
  spec.authors      = { 'Luke Parham' => 'dont@wory.aboutit' }
  spec.summary      = 'Test'
  spec.source       = { :git => 'https://github.com/lappp9/StaticLibB.git', :tag => '0.0.4' }
  spec.homepage     = 'https://google.com/'
  spec.source_files = 'StaticLibB/**/*', 'include/**/*'
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  spec.vendored_libraries = 'lib/libStaticLibA.a'

 # spec.subspec 'StaticLibA' do |sc|
  #  sc.source_files = 'include/*.h'
  #end
end
