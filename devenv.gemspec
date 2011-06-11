# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "devenv/version"

Gem::Specification.new do |s|
  s.name        = "devenv"
  s.version     = Devenv::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Joakim Kolsjö"]
  s.email       = ["joakim.kolsjo@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Automate installing development machines}
  s.description = %q{A tool designed to automate installation and maintenance of development environments by documenting them in code using chef}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "thor", ">0.14.5"
  s.add_dependency "chef", ">=0.10.0"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rspec"
end
