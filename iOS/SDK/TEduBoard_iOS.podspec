Pod::Spec.new do |spec|
  spec.name         = 'TEduBoard_iOS'
  spec.version      = '2.3.2'
  spec.platform     = :ios 
  spec.ios.deployment_target = '8.0'
  spec.license      = { :type => 'Proprietary',
      :text => <<-LICENSE
        copyright 2017 tencent Ltd. All rights reserved.
        LICENSE
       }
  spec.homepage     = 'https://cloud.tencent.com/document/product/680/14776'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/680/35891'
  spec.authors      = 'tencent interact class'
  spec.summary      = 'TXIMSDK_iOS'
  
  spec.requires_arc = true

  spec.source = { :git => 'https://github.com/tencentyun/TIC.git', :tag => spec.version}
  spec.preserve_paths = 'iOS/SDK/TEduBoard.framework'
  spec.source_files = 'iOS/SDK/TEduBoard.framework/Headers/*.h'
  spec.public_header_files = 'iOS/SDK/TEduBoard.framework/Headers/*.h'
  spec.vendored_frameworks = 'iOS/SDK/TEduBoard.framework'
  spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/TEduBoard_iOS/iOS/SDK/TEduBoard.framework/Headers/'}
end
