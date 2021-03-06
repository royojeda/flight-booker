class FlightsController < ApplicationController
  def index
    if params[:flight]
      @flights = Flight.where(flight_params)
      @passenger_count = params[:passenger_count]
    end
    @airports = Airport.all.map { |a| [a.name, a.id] }
    @dates = Flight.all.map { |f| [f.departure_date, f.departure_date] }.uniq
  end

  private

  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure_date)
  end
end
