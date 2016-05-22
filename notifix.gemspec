$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "notifix/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "notifix"
  s.version     = Notifix::VERSION
  s.authors     = ["Ramon Tayag"]
  s.email       = ["ramon.tayag@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Notifix."
  s.description = "TODO: Description of Notifix."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
