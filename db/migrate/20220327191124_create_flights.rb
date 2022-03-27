class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :departure_airport, null: false, foreign_key: true
      t.references :arrival_aiport, null: false, foreign_key: true
      t.datetime :departure_time
      t.int :duration

      t.timestamps
    end
  end
end
