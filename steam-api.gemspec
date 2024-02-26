# frozen_string_literal: true

require_relative "lib/steam-api/version"

Gem::Specification.new do |gem|
  gem.name = "steam-api"
  gem.version = Steam::VERSION
  gem.authors = ["Brian Haberer"]
  gem.email = ["bhaberer@gmail.com"]
  gem.description = "Simple Steam Gem"
  gem.summary = "Simple Gem to interact with the Steam Web API"
  gem.homepage = "https://github.com/bhaberer/steam-api"
  gem.license = "MIT"

  gem.metadata = {
    "rubygems_mfa_required" => "true"
  }

  gem.files = `git ls-files`.split($RS)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.4", "< 4"

  gem.add_dependency "faraday", "~> 2.9"

  gem.add_development_dependency "codeclimate-test-reporter", "~> 1.0"
  gem.add_development_dependency "rake", "~> 13.1.0"
  gem.add_development_dependency "rspec", "~> 3.13"

  gem.add_development_dependency "rubocop", "~> 1.60.2"
  gem.add_development_dependency "rubocop-rake", "~> 0.6.0"
  gem.add_development_dependency "rubocop-rspec", "~> 2.26.1"

  gem.add_development_dependency "standard", "~> 1.34.0"
end
