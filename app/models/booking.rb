class Booking < ApplicationRecord
  belongs_to :flight

  has_many :booking_transactions, inverse_of: :booking
  has_many :passengers, through: :booking_transactions

  accepts_nested_attributes_for :passengers
end
