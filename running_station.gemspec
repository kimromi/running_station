# frozen_string_literal: true

$:.push File.expand_path("lib", __dir__)
require "running_station/version"

Gem::Specification.new do |s|
  s.name        = "running_station"
  s.version     = RunningStation::VERSION
  s.authors     = ["kimromi"]
  s.email       = ["kimromi4@gmail.com"]
  s.homepage    = "https://github.com/kimromi/running_station"
  s.summary     = "runners management for rails"
  s.description = "runners management for rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rubocop-rails_config"
end
