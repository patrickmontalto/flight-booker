class BookingsController < ApplicationController
  def index
    @booking = Booking.search(params[:search])
    redirect_to @booking if @booking
  end

  def new
    @booking = Booking.new(flight_id: params[:flight])
    @flight = Flight.find(params[:flight])
    @date = @flight.flight_date
    params[:num_tickets].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:success] = "Booking created!"
      redirect_to @booking
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [ :name, :email])
    end
end
