class NewUserEmailMailer < ApplicationMailer
  def notify_user(user)
    @user = user
    mail(to: @user.user_email, subject: "welcome")
  end
end
