ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.gmail.com',
  :port                 =>  '587',
  :authentication       =>  :plain,
  :user_name            =>  'antsystemsldm@gmail.com',
  :password             =>  'ldm123456',
  :domain               =>  'gmail.com',
  :enable_starttls_auto  =>  true
}
