# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubygems-isitjruby}
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["blaxter", "Eric Hodel"]
  s.date = %q{2009-08-24}
  s.description = %q{Once the gem is installed, in every gem install command you'll get a message with info fetched from isitjruby.com website. Also you'll have a gem isitjruby command for getting those messages for the gem already installed in your system}
  s.email = %q{blaxter@gmail.com}
  s.extra_rdoc_files = [
    "README.rst"
  ]
  s.files = [
    "History.txt",
     "Manifest.txt",
     "README.rst",
     "Rakefile",
     "VERSION",
     "lib/isit19.rb",
     "lib/rubygems/commands/isit19_command.rb",
     "lib/rubygems/commands/isitjruby_command.rb",
     "lib/rubygems_plugin.rb",
     "rubygems-isitjruby.gemspec"
  ]
  s.homepage = %q{http://github.com/blaxter/rubygems-isitjruby}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Check whether a gem is compatible with jruby on http://isitjruby.com}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json-jruby>, [">= 1.1.7"])
    else
      s.add_dependency(%q<json-jruby>, [">= 1.1.7"])
    end
  else
    s.add_dependency(%q<json-jruby>, [">= 1.1.7"])
  end
end
