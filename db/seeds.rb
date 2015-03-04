# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  air = Airline.create([{ name: 'American Airline' }, { name: 'Iberia' }, { name: 'Satena' },{ name: 'Avianca' }])

  fly = Flight.create ([
                { airline: Airline.find_by_name('American Airline'), number: '88A23'}, 
  							{ airline: Airline.find_by_name('Iberia'), number: '8404C'},
  							{ airline: Airline.find_by_name('Satena'), number: '12A03'},
  							{ airline: Airline.find_by_name('Avianca'), number: '98P09'}])

  depar = Departure.create ([
                {  flight: fly[0], date: Date.today, status: :closed}, 
  							{  flight: fly[1], date: Date.today, status: :on_gate},
  							{  flight: fly[2], date: Date.today, status: :boarding},
  							{  flight: fly[3], date: Date.today, status: :took_off}])

 arri = Arrival.create  ([
                {  flight: fly[0], date: Date.today, status: :on_time}, 
  							{  flight: fly[1], date: Date.today, status: :delayed},
  							{  flight: fly[2], date: Date.today, status: :landing},
  							{  flight: fly[3], date: Date.today, status: :landed}])

  


#   Mayor.create(name: 'Emanuel', city: cities.first)