class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => "Airport", :foreign_key => "start_id"
  belongs_to :to_airport, :class_name => "Airport", :foreign_key => "finish_id"

  def flight_date
    self.departure_time.strftime("%D")
  end
end
