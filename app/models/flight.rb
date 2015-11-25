class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => "Airport", :foreign_key => "start_id"
  belongs_to :to_airport, :class_name => "Airport", :foreign_key => "finish_id"
  has_many :bookings
  has_many :passengers, :through => :bookings
  
  def flight_date
    self.departure_time.strftime("%D")
  end

  def flight_time
    self.departure_time.strftime("%I:%M %p")
  end
end
