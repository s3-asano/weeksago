# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weeksago/version'

Gem::Specification.new do |spec|
  spec.name          = "weeksago"
  spec.version       = Weeksago::VERSION
  spec.authors       = ["s3-asano\n"]
  spec.email         = ["show3asa@gmail.com"]

  spec.summary       = 'To find out how many weeks ago the date entered is from the base date.'
  spec.description   = 'Weekago is a method to find out how many weeks ago the date entered is from the base date.
 input_d : Requested day.
 base_d  : option. Based day. Default is today.
 wstrt_d : option. Start day of the week. Default is Monday.'
  spec.homepage      = "https://github.com/s3-asano/weeksago"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
