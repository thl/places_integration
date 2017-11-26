$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "places_integration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "places_integration"
  s.version     = PlacesIntegration::VERSION
  s.authors     = ["Andres Montano"]
  s.email       = ["amontano@virginia.edu"]
  s.homepage    = "http://places.kmaps.virginia.edu"
  s.summary     = "Engine to facilitate connecting to the Shanti Places app."
  s.description = "Engine to facilitate connecting to the Shanti Places app."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '>= 4.0'
  # s.add_dependency "jquery-rails"
end
