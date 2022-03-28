# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flight.delete_all
Airport.delete_all
Passenger.delete_all
Airport.create(code: 'SFO')
Airport.create(code: 'NYC')
Airport.create(code: 'LAX')
Airport.create(code: 'JFK')
Airport.create(code: 'SDU')
Airport.create(code: 'GRU')
Airport.create(code: 'CGN')
Airport.create(code: 'VCP')
Airport.create(code: 'GIG')

#Flight.create(departure_airport Airport.first, arrival_aiport Airport.last, departure_time: '2020-03-27T12:00:00', duration: 120)
Flight.create(departure_airport: Airport.first, arrival_airport: Airport.last, departure_time: '2020-03-27T12:00:00', duration: 120)
Flight.create(departure_airport: Airport.find_by(code: "LAX"), arrival_airport: Airport.find_by(code: 'GRU' ), departure_time: '2022-03-27T14:00:00', duration: 960)
Flight.create(departure_airport: Airport.find_by(code: "SDU"), arrival_airport: Airport.find_by(code: 'GRU' ), departure_time: '2022-03-29T15:00:00', duration: 60)
Flight.create(departure_airport: Airport.find_by(code: "SDU"), arrival_airport: Airport.find_by(code: 'VCP' ), departure_time: '2022-04-12T17:20:00', duration: 60)

