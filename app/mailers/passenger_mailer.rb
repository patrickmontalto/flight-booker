class PassengerMailer < ApplicationMailer

  def thank_you_email(passenger, booking)
    @passenger = passenger
    @booking = booking
    @flight = booking.flight
    mail(to: @passenger.email, subject: 'Thank You for Booking your Flight')
  end
end
