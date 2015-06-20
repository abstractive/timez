# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'timez/version'

Gem::Specification.new do |spec|
  spec.name          = "timez"
  spec.version       = Timez::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Dilum Navanjana"]
  spec.email         = ["dilumnavanjana@gmail.com"]

  spec.summary       = "timezonedb API implementation for RUBY"
  spec.description   = "Can use to get World Clock from the time zone or location for the Ruby Applications."
  spec.homepage      = "https://github.com/abstractive/timez"
  spec.license       = "MIT"

  # spec.required_ruby_version     = ">= 1.9.2"
  # spec.required_rubygems_version = ">= 1.3.6"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

end
