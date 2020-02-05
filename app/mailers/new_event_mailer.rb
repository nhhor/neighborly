class NewEventMailer < ApplicationMailer
  def notify_event(user, event)
    @event = event
    @user = user
    mail(to: @user.user_email, subject: "Your Neighborly Event!")
  end
end
