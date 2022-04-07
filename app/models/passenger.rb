class Passenger < ApplicationRecord
  belongs_to :booking, optional: true
  has_many :flights, through: :bookings
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
