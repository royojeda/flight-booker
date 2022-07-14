class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @passenger = params[:passenger]
    @url  = 'http://127.0.0.1:3000/'
    mail(to: @passenger.email, subject: 'Welcome to My Awesome Site')
  end
end
