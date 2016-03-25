# encoding: utf-8
require File.join(File.dirname(__FILE__), 'lib/chartmogul/version')

Gem::Specification.new do |gem|
  gem.add_dependency 'typhoeus'
  gem.add_dependency 'hashie'
  gem.add_dependency 'multi_json'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'webmock'
  gem.authors = ['Alexey Vokhmin', 'Dave Perrett']
  gem.description = %q{A Ruby wrapper for the ChartMogul API}
  gem.email = ['avokhmin@gmail.com', 'dave@recurser.com']
  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files = `git ls-files`.split("\n")
  gem.homepage = "https://github.com/Shuttlerock/chartmogul_client"
  gem.license = "Apache"
  gem.name = "chartmogul_client"
  gem.require_paths = ["lib"]
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6')
  gem.summary = %q{ChartMogul API wrapper}
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = Chartmogul::VERSION
end
