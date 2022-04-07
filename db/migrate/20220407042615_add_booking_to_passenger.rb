class AddBookingToPassenger < ActiveRecord::Migration[6.1]
  def change
    add_reference :passengers, :booking, null: false, foreign_key: true
  end
end
