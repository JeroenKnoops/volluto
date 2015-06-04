$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "volluto/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "volluto"
  s.version     = Volluto::VERSION
  s.authors     = ["Jeroen Knoops"]
  s.email       = ["jeroen.knoops@kabisa.nl"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Volluto."
  s.description = "TODO: Description of Volluto."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "3.2.2"
  s.add_development_dependency "capybara", "2.4.4"
  s.add_development_dependency "fuubar", "2.0.0"
end
