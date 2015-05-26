$:.push File.expand_path("../lib", __FILE__)

require "pagination_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "pagination_rails"
  spec.version       = PaginationRails::VERSION
  spec.authors       = ["Madeline Carson"]
  spec.email         = ["madeline.carson@gmail.com"]

  spec.summary       = %q{Includes basic offset and cursor pagination.}
  spec.description   = %q{Includes and sets up basic offset and cursor pagination.}
  spec.homepage      = "https://github.com/metalabdesign/pagination_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = "bin"
  # spec.executables   = ["metalab-api"]
  spec.require_paths = ["lib"]

  # spec.add_dependency "rails", "~> 4.2.0"
  # spec.add_dependency "bundler-reorganizer"
  # spec.add_dependency "highline"

  # spec.add_development_dependency "bundler", "~> 1.9"
end
