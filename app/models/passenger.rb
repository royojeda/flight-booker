class Passenger < ApplicationRecord
  has_many :booking_transactions
  has_many :bookings, through: :booking_transactions
  has_many :flights, through: :bookings
end
