$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "places_integration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "places_integration"
  s.version     = PlacesIntegration::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of PlacesIntegration."
  s.description = "TODO: Description of PlacesIntegration."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.8"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
