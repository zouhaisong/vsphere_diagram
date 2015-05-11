# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vsphere_diagram/version'

Gem::Specification.new do |spec|
  spec.name          = "vsphere_diagram"
  spec.version       = VsphereDiagram::VERSION
  spec.authors       = ["Haisong Zou"]
  spec.email         = ["zouhaisong@gmail.com"]
  spec.summary       = %q{A tool to generate diagram for vsphere.}
  spec.description   = %q{A tool to generate graphviz diagram for vsphere.
    See http://www.thoughtworks.com/radar/techniques/generated-infrastructure-diagrams}
  spec.homepage      = "https://github.com/zouhaisong/vsphere_diagram"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'thor'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
