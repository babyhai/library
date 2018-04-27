source 'https://gems.ruby-china.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end



gem 'rails', '~> 5.1.5'

gem 'mysql2', '>= 0.3.18', '< 0.5'

gem 'puma', '~> 3.7'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass'
gem 'font-awesome-rails'
gem 'sorcery'
gem 'ancestry'
gem 'will_paginate'
gem 'paperclip', '~> 5.0.0'


gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'


# gem 'redis', '~> 4.0'

gem 'bcrypt', '~> 3.1.7'



# gem 'capistrano-rails', group: :development

group :development, :test do

  gem 'pry'
  gem 'pry-rails'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  # 单元测试
  gem 'database_cleaner', '~> 1.5.3'
  gem 'rspec-rails', '~> 3.5'
  gem 'rails-controller-testing'


end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'


  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
