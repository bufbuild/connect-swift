Pod::Spec.new do |spec|
  spec.name = 'Connect-Swift'
  spec.module_name = 'Connect'
  spec.version = '0.2.0'
  spec.license = { :type => 'Apache 2.0', :file => 'LICENSE' }
  spec.summary = 'Idiomatic gRPC & Connect RPCs for Swift.'
  spec.homepage = 'https://github.com/bufbuild/connect-swift'
  spec.author = 'Buf Technologies, Inc.'
  spec.source = { :git => 'https://github.com/bufbuild/connect-swift.git', :tag => spec.version }

  spec.ios.deployment_target = '14.0'
  spec.osx.deployment_target = '10.15'

  spec.dependency 'SwiftProtobuf', '~> 1.20.3'

  spec.source_files = 'Libraries/Connect/**/*.swift'

  spec.swift_versions = ['5.0']
end
