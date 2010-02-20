# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{direct_address}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Nelson"]
  s.date = %q{2010-02-20}
  s.description = %q{Direct Address provides a rails app with simple address features. This is a streamlined implementation of address functionality. Direct Address provides you with address, country, and region classes. It also provides a generator which generates the necessary javascript and rake tasks to implement properly. You'll also get form helpers to easily implement Direct Address in your views. A rake task is provided that allows up to date country and region information to be downloaded from geoname.org.}
  s.email = %q{mdnelson30@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "direct_address.gemspec",
     "generators/direct_address/direct_address_generator.rb",
     "generators/direct_address/templates/controllers/regions_controller.rb",
     "generators/direct_address/templates/js/country_select.js",
     "generators/direct_address/templates/migrations/direct_address_migration.rb",
     "generators/direct_address/templates/models/address.rb",
     "generators/direct_address/templates/models/country.rb",
     "generators/direct_address/templates/models/region.rb",
     "generators/direct_address/templates/tasks/harvest.rake",
     "generators/direct_address/templates/views/index.json.erb",
     "lib/direct_address.rb",
     "lib/direct_address/acts_as_addressable.rb",
     "lib/direct_address/form_builder.rb",
     "lib/direct_address/form_helper.rb",
     "lib/direct_address/harvester/extend_string.rb",
     "lib/direct_address/harvester/geoname.rb",
     "spec/database.yml",
     "spec/debug.log",
     "spec/direct_address_spec.rb",
     "spec/model/user.rb",
     "spec/schema.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/mnelson/direct_address}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Direct Address provides a rails app with simple address features. It allows up-to-date data to be pulled in from geoname.org.}
  s.test_files = [
    "spec/direct_address_spec.rb",
     "spec/model/user.rb",
     "spec/schema.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

