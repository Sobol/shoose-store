class UserMailer < ActionMailer::Base
  default from: AppConfig.mailer.sender

  def activation_needed_email(user)
    @user = user
    @url  = "http://#{AppConfig.host}/users/#{user.activation_token}/activate"
    mail(:to => user.email,
         :subject => "Welcome to krzysztofbieniek.com Site")
  end

  def activation_success_email(user)
    @user = user
    @url  = "http://#{AppConfig.host}/login"
    mail(:to => user.email,
         :subject => "Your account is now activated")
  end
end
