source 'https://rubygems.org'
ruby '2.2.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'faker'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'pry-rails'
  gem 'rails-controller-testing', '0.1.1'
  gem 'minitest-reporters',       '1.1.9'
  gem 'guard-rspec',              require: false
  gem 'guard-minitest',           '2.4.4'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '0.18.4'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'devise'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'simple_form', '~> 3.2', '>= 3.2.1'
gem 'cocoon'
gem 'rails-i18n'
gem 'browser', '2.0.3'
