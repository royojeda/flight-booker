class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all.map { |a| [a.name, a.id] }
    @dates = Flight.all.map { |f| Time.find_zone(f.departure_airport.time_zone).parse(f.departure_time).strftime("%Y %B %d") }.uniq
  end
end
