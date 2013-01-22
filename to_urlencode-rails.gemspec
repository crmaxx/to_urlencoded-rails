# encoding: utf-8

version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.name        = 'to_urlencoded-rails'
  s.version     = version
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.author      = "Maxim Zhukov"
  s.email       = "crmaxx@gmail.com"
  s.homepage    = "http://github.com/crmaxx/to_urlencoded-rails"
  s.summary     = "Url encode exported Rails ActiveRecord data"
  s.description = "This simple plugin gives you the ability to call to_urlencoded to a collection of activerecords for Rails."
  
  s.files       = %w( README.md Rakefile LICENSE init.rb )
  s.files       += Dir.glob("lib/**/*")
  s.files       += Dir.glob("test/**/*")
  s.files       += Dir.glob("spec/**/*")
  
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"

  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = ">= 1.3.4"
end
