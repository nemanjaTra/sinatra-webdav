# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sinatra-webdav}
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Fork Unstable Media GmbH", "Florian Aßmann"]
  s.date = %q{2011-03-29}
  s.description = %q{Sinatra based WebDAV server implementation.}
  s.email = %q{src@fork.de}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".bundle/config",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "SUGGESTIONS.md",
    "VERSION",
    "lib/dav.rb",
    "lib/dav/base.rb",
    "lib/dav/callbacks.rb",
    "lib/dav/properties.rb",
    "lib/dav/property_accessors.rb",
    "lib/dav/resource.rb",
    "lib/dav/resource/actions.rb",
    "lib/dav/resource/children.rb",
    "lib/dav/resource/convenience.rb",
    "lib/dav/resource/traversing.rb",
    "lib/dav/responder.rb",
    "lib/dav/storages/file_storage.rb",
    "lib/dav/storages/memory_storage.rb",
    "lib/dav/storages/redis_storage.rb",
    "lib/sinatra-webdav.rb",
    "lib/webdav.rb",
    "lib/webdav/base.rb",
    "lib/webdav/convenience.rb",
    "lib/webdav/statuses.rb",
    "lib/webdav/verbs.rb",
    "log/.gitignore",
    "sinatra-webdav.gemspec",
    "test/.gitignore",
    "test/config.ru",
    "test/examples/propfind-allprop.xml",
    "test/examples/propfind-displayname.xml",
    "test/examples/propfind-propname.xml",
    "test/examples/proppatch-authors.xml",
    "test/integration/litmus_test.rb",
    "test/litmus-0.12.1.tar.gz",
    "test/teststrap.rb",
    "test/unit/file_storage_test.rb",
    "test/unit/memory_storage_test.rb",
    "test/unit/properties_test.rb",
    "test/unit/redis_storage_test.rb",
    "test/unit/resource_test.rb",
    "test/unit/responder_test.rb",
    "tmp/.gitignore"
  ]
  s.homepage = %q{http://farmfacts.fork.de/}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Sinatra based WebDAV server implementation.}
  s.test_files = [
    "test/integration/litmus_test.rb",
    "test/teststrap.rb",
    "test/unit/file_storage_test.rb",
    "test/unit/memory_storage_test.rb",
    "test/unit/properties_test.rb",
    "test/unit/redis_storage_test.rb",
    "test/unit/resource_test.rb",
    "test/unit/responder_test.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<redis>, [">= 0"])
      s.add_development_dependency(%q<riot>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<addressable>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<redis>, [">= 0"])
      s.add_dependency(%q<riot>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<addressable>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<redis>, [">= 0"])
    s.add_dependency(%q<riot>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

