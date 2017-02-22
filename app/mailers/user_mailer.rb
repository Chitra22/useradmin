class UserMailer < ApplicationMailer
<<<<<<< HEAD
	default from: 'senthilkumar15496@gmail.com'
    layout 'mailer'

 
  def welcome_email(user,post)
    @user = user
    @post = post
    binding.pry
=======
	default from: 'senthikumar15496@gmail.com'
    layout 'mailer'
  def welcome_email(user,post)
    @user = user
    @post = post
>>>>>>> 9b363ef561ea65dae5fc8656cc03647f5773d0e6
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
