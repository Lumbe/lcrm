$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ffcrm_awesome/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ffcrm_awesome"
  s.version     = FfcrmAwesome::VERSION
  s.authors     = ["lumen"]
  s.email       = ["just.me.sober@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FfcrmAwesome."
  s.description = "TODO: Description of FfcrmAwesome."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "pg"
end
