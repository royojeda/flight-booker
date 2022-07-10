class Flight < ApplicationRecord
  after_validation :set_departure_time, :determine_arrival_time

  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  private

  def set_departure_time
    self.departure_time = departure_time_object.in_time_zone(departure_airport.time_zone).to_s
  end

  def determine_arrival_time
    self.arrival_time = (departure_time_object + (Time.parse(duration).hour * 60 * 60) + (Time.parse(duration).min * 60)).in_time_zone(arrival_airport.time_zone).to_s
  end

  def departure_time_object
    Time.find_zone(departure_airport.time_zone).parse(departure_time)
  end
end
