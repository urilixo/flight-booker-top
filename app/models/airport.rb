class Airport < ApplicationRecord
  has_many :departing_flights, class_name: 'Flight', foreign_key: 'departure_airport_id'
  has_many :arriving_flights, class_name: 'Flight', foreign_key: 'arrival_airport_id'
  #has_many :passengers, through: :arriving_flights
  #has_many :passengers, through: :departing_flights
  validates :code, presence: true, uniqueness: true
end
