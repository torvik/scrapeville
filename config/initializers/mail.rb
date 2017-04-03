ActionMailer::Base.default :charset => "utf-8"
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address                =>  'smtp.gmail.com',
  :port                   =>  '587',
  :authentication         =>  :plain,
  :user_name              =>  ENV["GMAIL_USERNAME"],
  :password               =>  ENV["GMAIL_PASSWORD"],
  :domain                 =>  'heroku.com',
  :enable_starttls_auto   => true

   }
