class UserMailer < ApplicationMailer
	default from: 'senthikumar15496@gmail.com'
    layout 'mailer'
  def welcome_email(user,post)
    @user = user
    @post = post
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
