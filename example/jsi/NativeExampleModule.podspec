folly_version = '2021.06.28.00-v2'
folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'

Pod::Spec.new do |s|
    s.name = "NativeExampleModule"
    s.version = "0.0.1"
    s.summary = "NativeExampleModule"
    s.description = "NativeExampleModule"
    s.homepage = ""
    s.license = "MIT"
    s.platforms = { :ios => "10.0"}
    s.author = ""
    s.source = { :git => "https://github.com/denissb/react-native-turbo-example.git", :tag => "#{s.version}"}
    s.source_files = "./**/*.{h,m,mm,swift}"
    s.compiler_flags = folly_compiler_flags
    s.pod_target_xcconfig = {
      "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost\""
    }

    s.dependency "React-Core"

    # Don't install the dependencies when we run `pod install` in the old architecture.
    if ENV['RCT_NEW_ARCH_ENABLED'] == '1' then
    s.compiler_flags = folly_compiler_flags + " -DRCT_NEW_ARCH_ENABLED=1"
    s.pod_target_xcconfig    = {
        "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost\"",
        "CLANG_CXX_LANGUAGE_STANDARD" => "c++17"
    }

    s.dependency "React-Codegen"
    s.dependency "RCT-Folly", folly_version
    s.dependency "RCTRequired"
    s.dependency "RCTTypeSafety"
    s.dependency "ReactCommon/turbomodule/core"
  end
end