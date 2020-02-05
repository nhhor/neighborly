class NewEventMailer < ApplicationMailer
  def notify_event(user)
    @user = user
    mail(to: @user.user_email, subject: "Your Neighborly Event!")
  end
end
