class BookingsController < ApplicationController
  def new
    @flight = Flight.where(id: params[:flight_id]).first
    @booking = Booking.new
    @passenger_count = params[:passenger_count].to_i
    @passenger_count.times { @booking.passengers.build }
  end

  def create
    
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
