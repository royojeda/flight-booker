class Airport < ApplicationRecord
  has_many :departing_flights, foreign_key: :departure_airport_id,
                               inverse_of: :departure_airport
  has_many :arriving_flights, foreign_key: :arrival_airport_id,
                              inverse_of: :arrival_airport
end
