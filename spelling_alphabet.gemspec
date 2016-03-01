# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spelling_alphabet/version'

Gem::Specification.new do |spec|
  spec.name          = "spelling_alphabet"
  spec.version       = SpellingAlphabet::VERSION
  spec.authors       = ["hashimoton"]
  spec.email         = ["nhashimoto01@gmail.com"]

  spec.summary       = %q{SpellingAlphabet is a conversion module for spelling alphabets (phonetic alphabets).}
  spec.description   = %q{Supports Latin alphabets and Japanese kana.}
  spec.homepage      = "https://github.com/hashimoton/spelling_alphabet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  
  spec.required_ruby_version = ">= 1.9.3"
end
