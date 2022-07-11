class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.where(id: params[:flight_id]).first
    @passenger_count = params[:passenger_count].to_i
    # @passenger_count.times { @booking.passenger.build }
  end

  private

  def flight_params
    params.permit(:passenger_count, :flight_id)
  end
end
