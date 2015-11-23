class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{|a| [ a.code, a.id ] }
    @date_options = Flight.all.map{|d| [d.departure_time.strftime("%D")]}.uniq.sort
  end
end
