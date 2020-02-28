source "https://rubygems.org"

ruby "2.7.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 6.0.2", ">= 6.0.2.1"
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem "slim-rails"
gem "devise"
gem "rails_admin", "~> 2.0"
gem "wysiwyg-rails", "~> 3.1.0"
gem "active_link_to", "~> 1.0.5"
gem "google-cloud-storage", "~> 1.11", require: false
gem 'image_processing'
gem 'analytics-ruby', '~> 2.0.0', :require => 'segment/analytics'
gem 'dotenv-rails', groups: [:development, :test]
gem "font-awesome-rails"
gem 'simplecov', require: false, group: :test

group :development, :test do
  gem "byebug", platform: :mri
  gem 'rspec-rails', '~> 4.0.0.beta'
  gem 'shoulda-matchers'
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
