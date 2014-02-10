# coding: utf-8

source 'https://rubygems.org'

gem "activerecord", "~> 2.3.11"

gemspec

group :development, :test do
  gem 'devtools', git: 'https://github.com/rom-rb/devtools.git'
  gem 'gem-release'
  gem 'sqlite3'
end

# Added by devtools
eval_gemfile 'Gemfile.devtools'
