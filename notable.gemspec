$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "notable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "notable"
  s.version     = Notable::VERSION
  s.authors     = ["Chris Lundquist"]
  s.email       = ["chris.lundquist@github.com"]
  s.homepage    = "https://github.com/clundquist/notable"
  s.summary     = "Add notes to all the things"
  s.description = "Lets you add notes to all the things"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  #s.add_dependency "jquery-rails" # installing doesn't work right now

  s.add_development_dependency "sqlite3"
end
