Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  config.serve_static_assets = true
  config.action_mailer.default_url_options = { host: 'localhost', port: 5000 }

# Current mailing testing uses mailcatcher
# After running 'gem install mailcatcher', run mailcatcher
# this will start mailcatcher with smtp://127.0.0.1:1025 web interface at http://127.0.0.1:1080
# using the setting below to view all mailsent with web pointed to http://localhost:1080
# cool - right?

# as mailcatcher use the following
#ActionMailer::Base.smtp_settings = {
#  :address        => "127.0.0.1",
#  :port           => "1025",
#  :authentication => :plain,
#  :user_name      => "",
#  :password       => "",
#  :domain         => ""
#}

# as mailgun - use the following
ActionMailer::Base.smtp_settings = {
  :address        => "smtp.mailgun.org",
  :port           => "587",
  :authentication => :plain,
  :user_name      => ENV['MG_USER_NAME'],
  :password       => ENV['MG_PASSWORD'],
  :domain         => ENV['MG_DOMAIN'],
  :enable_starttls_auto => true
}

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end
