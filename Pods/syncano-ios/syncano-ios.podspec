Pod::Spec.new do |s|

  s.name         = "syncano-ios"
  s.version      = "3.1.32"
  s.summary      = "Library for http://syncano.com API"

  s.homepage     = "http://www.syncano.com"
  s.license      = 'MIT'
  s.author       = 'Syncano Inc.'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source       = { :git => "https://github.com/Syncano/syncano-ios.git", :tag => s.version.to_s }
  s.prefix_header_contents = "#import \"syncano-ios-library-Prefix.pch\""
  s.header_dir   =  'Syncano'
  s.source_files = 'Syncano/**/*.{h,m,pch}', 'syncano-ios-library/**/*.{h,m,pch}'
  s.private_header_files = 'Syncano/Private/*.h'
  s.resources    = [ 'Resources/server.der', 'syncano-ios.podspec.json' ]

  s.dependency 'CocoaAsyncSocket', '~>7.3.0'
  s.dependency 'AFNetworking', '~> 2.3.0'
  s.dependency 'Mantle', '~> 1.4.1'

end
