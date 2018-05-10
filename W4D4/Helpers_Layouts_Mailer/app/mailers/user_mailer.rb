class UserMailer < ApplicationMailer

  default from: 'everybody@appacademy.io'


  def welcome_email(user)
    @user = user
    @url = 'http://example.com/session/new'
    mail(to: user, subject: 'Welcome to My Extremely Awesome Site')
  end
end
