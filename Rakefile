#!/usr/bin/env rake

require 'rspec/core/rake_task'
require File.dirname(__FILE__) + '/lib/chartmogul/version'

task :default => :test

task :build => :test do
  system 'gem build chartmogul_client.gemspec'
end

task :release => :build do
  # tag and push
  system "git tag v#{Chartmogul::VERSION}"
  system "git push origin --tags"
  # push the gem
  system "gem push chartmogul_client-#{Chartmogul::VERSION}.gem"
end

RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = 'spec/**/*_spec.rb'
  fail_on_error = true # be explicit
end
