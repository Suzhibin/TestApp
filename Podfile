workspace 'TestApp.xcworkspac'

source 'https://github.com/CocoaPods/Specs.git'
install! 'cocoapods', :deterministic_uuids => false

platform :ios, '9.0'
inhibit_all_warnings!
#use_frameworks!

target 'TestApp' do
  # 注意 因为github 下载工程默认添加-master。所以我这个写了'../TestAppModule-master' 正常是不用写-master的
  pod 'TestAppModule/TestBasis', :path => '../TestAppModule-master'
  pod 'TestAppModule/TestA', :path => '../TestAppModule-master'
  pod 'TestAppModule/TestB', :path => '../TestAppModule-master'
  pod 'TestAppModule/TestC', :path => '../TestAppModule-master'

end
