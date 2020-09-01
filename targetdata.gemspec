require_relative 'lib/targetdata/version'

Gem::Specification.new do |spec|
  spec.name          = "targetdata"
  spec.version       = Targetdata::VERSION
  spec.authors       = ["Kim Pastro"]
  spec.email         = ["kimpastro@gmail.com"]

  spec.summary       = %q{Targetdata Smart API integration}
  spec.description   = %q{Integrates with Targetdata Smart API!}
  spec.homepage      = "https://github.com/kimpastro/targetdata"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kimpastro/targetdata"
  spec.metadata["changelog_uri"] = "https://github.com/kimpastro/targetdata/CHANGELOG.md"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end