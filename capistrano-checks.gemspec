require_relative "lib/capistrano/checks/version"

Gem::Specification.new do |spec|
  spec.name          = "capistrano-checks"
  spec.version       = Capistrano::Checks::VERSION
  spec.authors       = ["labocho"]
  spec.email         = ["labocho@penguinlab.jp"]

  spec.summary       = "Run some checks before deployment by capistrano"
  spec.description   = "Run some checks before deployment by capistrano"
  spec.homepage      = "https://github.com/socioart/capistrano-checks"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/socioart/capistrano-checks/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r(^exe/)) {|f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.add_runtime_dependency "capistrano-local_branch_check", "~> 0.1.0"
  spec.add_runtime_dependency "capistrano-push_check", "~> 0.1.0"
  spec.add_runtime_dependency "capistrano-running_process_check", "~> 0.2.0"
  spec.add_runtime_dependency "capistrano-zeitwerk_check", "~> 0.1.0"
end
