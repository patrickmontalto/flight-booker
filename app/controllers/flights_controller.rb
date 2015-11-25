class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{|a| [ a.code, a.id ] }
    @date_options = Flight.all.map{|d| [d.departure_time.strftime("%D"), d.departure_time]}.uniq {|d| d.first}.sort
    params[:date].nil? ? nil : date = params[:date].to_datetime.strftime("%F")
    @flights = Flight.where(from_airport: params[:from_id]).where(
                              to_airport: params[:to_id]).where('DATE(departure_time) = ?', date)
  end
end
