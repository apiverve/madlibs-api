Pod::Spec.new do |s|
  s.name             = 'APIVerveMadLibsGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Mad Libs Generator is a Mad Libs API that creates fill-in-the-blank story templates with prompts for nouns, verbs, adjectives, and more.'
  s.description      = <<-'DESC'
Mad Libs Generator is a Mad Libs API that creates fill-in-the-blank story templates with prompts for nouns, verbs, adjectives, and more.

This iOS/macOS SDK provides a convenient way to access the Mad Libs Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/madlibs?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/madlibs-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveMadLibsGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
