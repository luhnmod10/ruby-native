Gem::Specification.new do |s|
  s.name          = "luhnmod10-native"
  s.version       = "1.0.0"
  s.platform      = Gem::Platform::RUBY
  s.authors       = "Leigh McCulloch"
  s.licenses      = "MIT"
  s.homepage      = "https://github.com/luhnmod10/ruby-native"
  s.summary       = %q{A fast and simple in-place implementation of the luhn check algorithm in Ruby using a C extension.}
  s.description   = %q{A fast and simple in-place implementation of the luhn check algorithm in Ruby using a C extension.}
  s.files         = [
    "ext/luhnmod10/native/extconf.rb",
    "ext/luhnmod10/native/native.c"
  ]
  s.extensions    = [
    "ext/luhnmod10/native/extconf.rb"
  ]

  s.add_development_dependency "rake", "~> 11.2.2"
  s.add_development_dependency "rake-compiler", "~> 1.0.0"
  s.add_development_dependency "test-unit", "~> 3.2.1"
end
