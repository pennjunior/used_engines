Recaptcha.configure do |config|
  config.site_key  = ENV['RECAPTCHA_SITE_KEY'] # Use environment variables for security
  config.secret_key = ENV['RECAPTCHA_SECRET_KEY']
end
