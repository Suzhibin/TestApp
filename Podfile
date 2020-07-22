workspace 'TestApp.xcworkspac'

source 'https://github.com/CocoaPods/Specs.git'
install! 'cocoapods', :deterministic_uuids => false

platform :ios, '9.0'
inhibit_all_warnings!

target 'TestApp' do
  pod 'TestAppModule/TestBasis', :path => '../TestAppModule'
  pod 'TestAppModule/TestA', :path => '../TestAppModule'
  pod 'TestAppModule/TestB', :path => '../TestAppModule'
  pod 'TestAppModule/TestC', :path => '../TestAppModule'
end
