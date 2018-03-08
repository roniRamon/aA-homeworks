class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user

    mail(to: @user.username, subject: 'Thank you for signing up to 99 cats!')
  end

end
