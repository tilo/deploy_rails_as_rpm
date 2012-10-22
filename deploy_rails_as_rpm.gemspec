# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deploy_rails_as_rpm/version'

Gem::Specification.new do |gem|
  gem.name          = "deploy_rails_as_rpm"
  gem.version       = DeployRailsAsRPM::VERSION
  gem.authors       = ["Tilo Sloboda\n"]
  gem.email         = ["tilo.sloboda@gmail.com\n"]
  gem.description   = %q{Helps you to deploy your Rails app as an RPM. This Gem helps you generate an RPM.spec file from a given Rails application, build the RPM, and quickly deploy it to production servers -- without having to install RVM, install gems or bundles on your production servers.}
  gem.summary       = %q{Helps you to deploy your Rails app as an RPM in seconds. This Gem helps you generate an RPM.spec file, helps you build the RPM, and to automate the deployment via RPM}
  gem.homepage      = "https://github.com/tilo/deploy_rails_as_rpm"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
