# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "active_model-better_errors"
  s.version = "1.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Qian", "Byron Anderson"]
  s.date = "2013-01-23"
  s.description = "ActiveModel::Errors class is not designed for API consumption. This gem allows for that while keeping compatibility with existing rails API."
  s.email = ["aq1018@gmail.com", "byronanderson32@gmail.com"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".gitmodules",
    ".rspec",
    ".travis.yml",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "active_model-better_errors.gemspec",
    "lib/active_model/better_errors.rb",
    "lib/active_model/error_collecting.rb",
    "lib/active_model/error_collecting/array_reporter.rb",
    "lib/active_model/error_collecting/core_ext.rb",
    "lib/active_model/error_collecting/emulation.rb",
    "lib/active_model/error_collecting/error_collection.rb",
    "lib/active_model/error_collecting/error_message.rb",
    "lib/active_model/error_collecting/error_message_set.rb",
    "lib/active_model/error_collecting/errors.rb",
    "lib/active_model/error_collecting/hash_reporter.rb",
    "lib/active_model/error_collecting/human_array_reporter.rb",
    "lib/active_model/error_collecting/human_hash_reporter.rb",
    "lib/active_model/error_collecting/human_message_formatter.rb",
    "lib/active_model/error_collecting/human_message_reporter.rb",
    "lib/active_model/error_collecting/machine_array_reporter.rb",
    "lib/active_model/error_collecting/machine_hash_reporter.rb",
    "lib/active_model/error_collecting/message_reporter.rb",
    "lib/active_model/error_collecting/reporter.rb",
    "spec/lib/active_model/better_errors_spec.rb",
    "spec/lib/active_model/error_collecting/emulation_spec.rb",
    "spec/lib/active_model/error_collecting/error_collection_spec.rb",
    "spec/lib/active_model/error_collecting/error_message_set_spec.rb",
    "spec/lib/active_model/error_collecting/error_message_spec.rb",
    "spec/lib/active_model/error_collecting/errors_spec.rb",
    "spec/lib/active_model/error_collecting/human_array_reporter_spec.rb",
    "spec/lib/active_model/error_collecting/human_hash_reporter_spec.rb",
    "spec/lib/active_model/error_collecting/human_message_formatter_spec.rb",
    "spec/lib/active_model/error_collecting/human_message_reporter_spec.rb",
    "spec/lib/active_model/error_collecting/machine_array_reporter_spec.rb",
    "spec/lib/active_model/error_collecting/machine_hash_reporter_spec.rb",
    "spec/lib/active_model/error_collecting_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/models.rb",
    "test/integration.rb"
  ]
  s.homepage = "http://github.com/aq1018/active_model-better_errors"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "API consumable error messages with ActiveModel::Errors drop-in compatibility."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<bcrypt-ruby>, ["~> 3.0.0"])
      s.add_development_dependency(%q<mocha>, [">= 0.12.1"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<bcrypt-ruby>, ["~> 3.0.0"])
      s.add_dependency(%q<mocha>, [">= 0.12.1"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.12.0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<bcrypt-ruby>, ["~> 3.0.0"])
    s.add_dependency(%q<mocha>, [">= 0.12.1"])
  end
end

