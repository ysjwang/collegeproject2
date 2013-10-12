source 'http://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'

gem 'pg'

gem "devise"

gem "geocoder"

gem 'country-select'
gem 'paperclip'
gem 'aws-sdk'

gem 'formtastic'

gem 'possessive'

gem 'acts-as-taggable-on'

gem 'activeadmin'


group :development do
	gem 'annotate'
	gem 'quiet_assets'
	# gem "seed_dump", "~> 0.5.3"
end

# group :production do
#   gem 'therubyracer-heroku', '0.8.1.pre3'
# end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end


# Need to use a lower version, as the newest version removes jquery-ui from this gem, which active-admin depends on. 
# See http://stackoverflow.com/questions/16844411/rails-active-admin-deployment-couldnt-find-file-jquery-ui for more details
gem "jquery-rails", "< 3.0.0" 


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
