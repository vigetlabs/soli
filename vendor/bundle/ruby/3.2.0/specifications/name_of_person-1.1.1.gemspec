# -*- encoding: utf-8 -*-
# stub: name_of_person 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "name_of_person".freeze
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Heinemeier Hansson".freeze]
  s.date = "2019-04-25"
  s.email = "david@basecamp.com".freeze
  s.homepage = "https://github.com/basecamp/name_of_person".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.4.10".freeze
  s.summary = "Presenting names of people in full, familiar, abbreviated, and initialized forms (but without titulation etc)".freeze

  s.installed_by_version = "3.4.10" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 5.2.0"])
  s.add_development_dependency(%q<activemodel>.freeze, [">= 5.2.0"])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 1.15"])
end
