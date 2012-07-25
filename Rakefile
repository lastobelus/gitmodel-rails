# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "gitmodel-rails"
  gem.homepage = "http://github.com/mcasimir/gitmodel-rails"
  gem.license = "MIT"
  gem.summary = %Q{A Rails gem that integrates Gitmodel (https://github.com/pauldowman/gitmodel) with Ruby on Rails}
  gem.description = %Q{A Rails gem that integrates Gitmodel (https://github.com/pauldowman/gitmodel) with Ruby on Rails}
  gem.email = "maurizio.cas@gmail.com"
  gem.authors = ["mcasimir"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
