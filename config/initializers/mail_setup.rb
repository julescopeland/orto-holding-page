# Be sure to restart your server when you modify this file.

Rails.application.config.action_mailer.delivery_method = :smtp
Rails.application.config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'orto.uk.com',
  user_name:            Figaro.env.gmail_username,
  password:             Figaro.env.gmail_password,
  authentication:       'plain',
  enable_starttls_auto: true  }