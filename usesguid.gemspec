# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{usesguid}
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian Morearty", "Demetrio Nunes", "Robert Aman", "C. Jason Harrelson(midas)"]
  s.date = %q{2009-11-13}
  s.description = %q{A much faster version of the usesguid plugin for Rails (uses MySQL to generate GUIDs)}
  s.email = %q{jason@lookforwardenterprises.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "History.txt",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/usesguid.rb",
     "lib/usesguid/active_record_extensions.rb",
     "lib/usesguid/uuid_mysql.rb",
     "lib/usesguid/uuidtools.rb",
     "script/console",
     "spec/spec_helper.rb",
     "spec/usesguid_spec.rb",
     "usesguid.gemspec"
  ]
  s.homepage = %q{http://github.com/midas/usesguid}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A much faster version of the usesguid plugin for Rails}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/usesguid_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

