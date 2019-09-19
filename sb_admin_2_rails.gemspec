lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sb_admin_2_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "sb_admin_2_rails"
  spec.version       = SbAdmin2Rails::VERSION
  spec.authors       = ["Sean Yeoh"]
  spec.email         = ["sean.yeoh@hotmail.com"]

  spec.summary       = %q{StartBootstrap SB Admin 2 for Rails}
  spec.description   = %q{StartBootstrap SB Admin 2 for Rails}
  spec.homepage      = "https://github.com/sean-yeoh/sb_admin_2_rails"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sean-yeoh/sb_admin_2_rails"
  spec.metadata["changelog_uri"] = "https://github.com/sean-yeoh/sb_admin_2_rails/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency ''
  spec.add_runtime_dependency "bootstrap", '~> 4.3.1'
  spec.add_runtime_dependency "font-awesome-sass", '~> 5.9.0'
end
