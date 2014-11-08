require "rbconfig"
HOST_OS = RbConfig::CONFIG["host_os"]

source "https://rubygems.org" 

gem 'rails4_upgrade', github: 'alindeman/rails4_upgrade'
gem 'rack', '1.5.2'
gem 'rails', '4.1.7'
gem 'activeresource'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'protected_attributes'
gem 'nokogiri'
gem 'pg'
gem 'squeel'
gem 'rails_setup'
gem 'devise'
gem 'permitters', '~> 0.0.1'
gem 'cocoon'
gem 'ransack'
gem 'simple_form'
gem 'kaminari'
gem 'rails_admin', :git => 'git@github.com:sferik/rails_admin.git'
gem 'american_date'
gem 'cancan'
gem 'paper_trail', '~> 3.0.6'
gem 'prawn-print', :git => 'git://github.com/barsoom/prawn-print.git'
gem 'capistrano'
gem 'simple-capistrano-unicorn'
gem 'rvm-capistrano', '>=1.3.0.rc4'
gem 'backup-task'
gem 'unicorn'
gem 'active_model_serializers'
gem 'turbolinks'
gem 'restful_json', '~> 4.2.0'
gem 'angularjs-rails-resource'
gem "prawn-labels"


group :assets do
  gem "Ascii85", "~> 1.0.2"
  gem 'coffee-rails', '~> 4.0.0'
  gem 'sass-rails'
  gem 'bootstrap-sass', '~> 2.3.1.0'
  gem 'uglifier'
  gem 'font-awesome-rails' , '~> 3.2.0.0'
  gem 'kaminari-bootstrap'
  gem "jquery-rails"
  gem 'haml-rails'
  gem 'bourbon'
end

gem 'attr_encrypted'
gem 'decent_exposure'

group :development, :test do
  gem 'chrome_logger',  :require => 'chrome_logger/railtie'
  gem 'rack-mini-profiler'
  gem 'cucumber-rails', :require => false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'shoulda'
  gem 'launchy'
  gem 'rspec-rails', '~> 2.12'
  gem 'faker'
  gem 'pry-rails'
  gem 'pdf-inspector', :require => "pdf/inspector"
  gem 'rb-fsevent', :require => RUBY_PLATFORM.include?("darwin") && "rb-fsevent"
  gem 'ruby_gntp',  :require => RUBY_PLATFORM.include?("darwin") && "ruby_gntp"
  gem 'libnotify',  :require => RUBY_PLATFORM.include?("linux")  && "libnotify"
  gem 'rb-inotify', :require => RUBY_PLATFORM.include?("linux")  && "rb-inotify"
  gem 'factory_girl_rails'
  gem 'rb-fchange',   :platform => :mswin
  gem 'win32console', :platform => :mswin
  gem 'rb-notifu',    :platform => :mswin
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'guard-livereload'
  gem 'yajl-ruby'
  gem 'rack-livereload'
  gem 'guard-cucumber'
  gem 'timecop'
  gem 'sqlite3'
  gem 'foreman'
  gem 'zeus'
  gem 'spork', '~> 1.0rc'

end


