# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create airports
nyc = Airport.create!(code: "NYC")
sfo = Airport.create!(code: "SFO")
pdx = Airport.create!(code: "PDX")
lax = Airport.create!(code: "LAX")

# Create flights

# NYC to SFO
Flight.create!(start_id: nyc.id, finish_id: sfo.id, departure_time: 3.hours.from_now, duration: 6)
# NYC to PDX
Flight.create!(start_id: nyc.id, finish_id: pdx.id, departure_time: 1.week.from_now, duration: 5.5)
# SFO to NYC
Flight.create!(start_id: sfo.id, finish_id: nyc.id, departure_time: 1.month.from_now, duration: 5)
# LAX to PDX
Flight.create!(start_id: lax.id, finish_id: pdx.id, departure_time: 1.month.from_now, duration: 2)
# PDX to NYC
Flight.create!(start_id: pdx.id, finish_id: nyc.id, departure_time: 1.week.from_now, duration: 5)