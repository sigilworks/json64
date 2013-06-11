$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "json64/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "json64"
  s.version     = Json64::VERSION
  s.authors     = ["Timothy J. Palmer (sigilworks)"]
  s.email       = ["tim@sigilworks.com"]
  s.homepage    = "http://www.sigilworks.com"
  s.summary     = "Controller output of model data using Base64-encoded JSON entities"
  s.description = "Controller output of model data using Base64-encoded JSON entities"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"

  s.add_development_dependency "sqlite3"
end
