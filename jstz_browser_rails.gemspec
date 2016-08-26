$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jstz_browser_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jstz_browser_rails"
  s.version     = JstzBrowserRails::VERSION
  s.authors     = ["Chip Duffield"]
  s.email       = ["chip.duffield@gmail.com"]
  s.homepage    = "https://github.com/cduffield/jstz_browser_rails"
  s.summary     = "Sets the browser timezone based on client time zone"
  s.description = "Use client side timezone to set Time.zone in rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency "js_cookie_rails"

  s.add_development_dependency "pg"
end
