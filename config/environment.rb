# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.default_content_type = "text/html"

Rails.application.config.action_mailer.delivery_method = :smtp

Rails.application.config.action_mailer.smtp_settings = {
  :user_name => '18d2d6def8ee04',
  :password => '7bd49f59bcb1f9',
  :address => 'smtp.mailtrap.io',
  :domain => 'smtp.mailtrap.io',
  :port => '2525',
  :authentication => :cram_md5
}
