
require_relative "lib/rackula/version"

Gem::Specification.new do |spec|
	spec.name          = "rackula"
	spec.version       = Rackula::VERSION
	spec.authors       = ["Samuel Williams"]
	spec.email         = ["samuel.williams@oriontransfer.co.nz"]

	spec.summary       = "Generate a static site from any rackup compatible application."
	spec.homepage      = "https://github.com/socketry/rackula"
	spec.license       = "MIT"

	spec.files         = `git ls-files -z`.split("\x0").reject do |f|
		f.match(%r{^(test|spec|features)/})
	end

	spec.executables   = spec.files.grep(%r{^bin/}) {|f| File.basename(f)}
	spec.require_paths = ["lib"]

	spec.add_dependency "samovar", "~> 2.1"
	spec.add_dependency "falcon", "~> 0.34"

	spec.add_development_dependency "covered"
	spec.add_development_dependency "bundler"
	spec.add_development_dependency "bake-bundler"
	spec.add_development_dependency "rspec", "~> 3.0"
end
