class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    #@booking = params[:booking]
    @url = 'http://example.com/login'
    @passenger = params[:passenger]
    @booking = params[:booking]
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
