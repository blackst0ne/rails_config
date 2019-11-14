$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'rails_config/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  # Привет, добрый друг!
  # Это форк оригинального гема rails_config, который на данный момент (14.11.2019) уже протух.
  # Но гем используется в проекте CampaignManagement, поэтому его пришлось форкнуть и научить работать с Rails 5.1
  # Изменения в форке:
  # 1. В lib/rails_config/integration/rails.rb изменён `prepend_before_filter` на `prepend_before_action`.
  # 2. Обновлено имя гема, чтобы не перепутать с оригиналом: `rails_config` -> `funbox-rails_config`.
  # 3. Обновлена версия гема, чтобы не перепутать с оригиналом: `0.4.2` -> `0.4.2-funbox`.
  s.name             = "funbox-rails_config"
  s.version          = RailsConfig::VERSION
  s.date             = Time.now.strftime '%F'
  s.authors          = ["Jacques Crocker", "Fred Wu", "Piotr Kuczynski"]
  s.email            = ["railsjedi@gmail.com", "ifredwu@gmail.com", "piotr.kuczynski@gmail.com"]
  s.summary          = "Provides a Settings helper for Rails that reads from config/settings.yml"
  s.description      = "Easy to use Settings helper that loads its data in from config/settings.yml. Handles adding multiple sources, and easy reloading."
  s.homepage         = "http://github.com/railsjedi/rails_config"
  s.license          = "MIT"
  s.extra_rdoc_files = ["README.md"]
  s.rdoc_options     = ["--charset=UTF-8"]

  #s.files            = `git ls-files -z`.split("\x0")
  s.files = Dir.glob("{lib}/**/*") + %w(LICENSE.md README.md CHANGELOG.md)

  s.executables      = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files       = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths    = ["lib"]

  s.add_dependency "activesupport", ">= 3.0"

  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake"
  s.add_development_dependency "rdoc", "~> 3.4"
  #s.add_development_dependency "pry"

  # Testing
  s.add_development_dependency "rails", "~> 3.2.17"
  s.add_development_dependency "rspec", "~> 2.14"
  s.add_development_dependency "rspec-rails", "~> 2.14"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rubocop"

  # A Ruby library for testing your library against different versions of dependencies.
  s.add_development_dependency "appraisal"

  # Gem releasing
  s.add_development_dependency "gem-release"

end
