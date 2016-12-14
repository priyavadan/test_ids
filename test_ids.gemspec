# coding: utf-8
config = File.expand_path('../config', __FILE__)
require "#{config}/version"

Gem::Specification.new do |spec|
  spec.name          = "test_ids"
  spec.version       = TestIds::VERSION
  spec.authors       = ["Stephen McGinty"]
  spec.email         = ["stephen.mcginty@nxp.com"]
  spec.summary       = "Origen plugin to assign and track test program bins and test numbers"
  #spec.homepage      = "http://origen-sdk.org/test_ids"

  spec.required_ruby_version     = '>= 2'
  spec.required_rubygems_version = '>= 1.8.11'

  # Only the files that are hit by these wildcards will be included in the
  # packaged gem, the default should hit everything in most cases but this will
  # need to be added to if you have any custom directories
  spec.files         = Dir["lib/**/*.rb", "templates/**/*", "config/**/*.rb",
                           "bin/*", "lib/tasks/**/*.rake", "pattern/**/*.rb",
                           "program/**/*.rb"
                          ]
  spec.executables   = []
  spec.require_paths = ["lib"]

  # Add any gems that your plugin needs to run within a host application
  spec.add_runtime_dependency "origen", ">= 0.7.40"
  spec.add_runtime_dependency "origen_testers"
  spec.add_runtime_dependency "git"
end
