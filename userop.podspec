Pod::Spec.new do |spec|
    spec.name         = 'userop'
    spec.version      = '1.2.5'
    spec.ios.deployment_target = "14.0"
    spec.osx.deployment_target = "12.0"
    spec.license      = { :type => 'MIT License', :file => 'LICENSE.md' }
    spec.summary      = 'swift version of https://github.com/stackup-wallet/userop.js'
    spec.homepage     = 'https://github.com/shengjiehou123/userop-swift'
    spec.author       = { 'sunny' => 'sm812a@gmail.com' }
    spec.source       = { :git => 'https://github.com/Ssunnyy/userop-swift', :tag => spec.version.to_s }
    spec.swift_version = '5.8'

    spec.source_files =  "Sources/userop-swift/**/*.swift"
    spec.frameworks = 'Foundation'

    spec.dependency 'Web3Core'
    spec.dependency 'web3swift'
end
