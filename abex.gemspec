$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "abex/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "abex"
  spec.version     = Abex::VERSION
  spec.authors     = ["Shailendra"]
  spec.email       = ["singh.shailendra@scaler.com"]
  spec.homepage    = "https://www.scaler.com"
  spec.summary     = "Summary of Abex."
  spec.description = "Description of Abex."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 5.1.4"
  spec.add_development_dependency "sqlite3"
end
