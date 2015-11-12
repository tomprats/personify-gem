require File.expand_path("../lib/personify/version", __FILE__)

Gem::Specification.new do |s|
  s.name         = "personify"
  s.version      = Personify::VERSION
  s.summary      = "Personify!"
  s.description  = "Personify API's Gem"
  s.authors      = ["Tom Prats"]
  s.email        = "tom@tomprats.com"
  s.homepage     = "https://github.com/tomprats/personify-gem"
  s.license      = "MIT"

  s.files       = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "http", "~> 0.9"
  s.add_dependency "hashie", "~> 3.0"

  s.required_ruby_version = ">= 1.9.3"
end
