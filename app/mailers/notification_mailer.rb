class NotificationMailer < ActionMailer::Base

  def send_otp_link(user, otp)
    @otp = otp
    @user = user
    mail(to: @user.email,
     from: 'hello@mrmechanic.com',
     subject: "OTP Confirmation"
     )
  end
end
