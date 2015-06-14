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
  spec.license       = ["MIT"]

  gem.required_ruby_version     = ">= 1.9.2"
  gem.required_rubygems_version = ">= 1.3.6"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = "lib"
end
