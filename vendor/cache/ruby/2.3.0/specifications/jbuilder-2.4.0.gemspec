# -*- encoding: utf-8 -*-
# stub: jbuilder 2.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jbuilder".freeze
  s.version = "2.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Heinemeier Hansson".freeze, "Pavel Pravosud".freeze]
  s.date = "2015-12-27"
  s.email = ["david@37signals.com".freeze, "pavel@pravosud.com".freeze]
  s.homepage = "https://github.com/rails/jbuilder".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Create JSON structures via a Builder-style DSL".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 3.0.0"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.2"])
    else
      s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 3.0.0"])
      s.add_dependency(%q<multi_json>.freeze, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, ["< 5.1", ">= 3.0.0"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.2"])
  end
end
