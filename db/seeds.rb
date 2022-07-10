# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all

Airport.create([{ code: "LHR", name: "London Heathrow", time_zone: "London" },
                { code: "HND", name: "Tokyo Haneda", time_zone: "Tokyo" },
                { code: "DXB", name: "Dubai", time_zone: "Abu Dhabi" },
                { code: "JFK", name: "New York JFK", time_zone: "America/New_York" },
                { code: "YVR", name: "Vancouver", time_zone: "Pacific Time (US & Canada)" }])

Flight.delete_all

Flight.create([{ departure_airport_id: Airport.where(code: "LHR").first.id,
                 arrival_airport_id: Airport.where(code: "HND").first.id,
                 departure_time: "2022-09-21 13:30",
                 duration: "13:00" },
               { departure_airport_id: Airport.where(code: "JFK").first.id,
                 arrival_airport_id: Airport.where(code: "YVR").first.id,
                 departure_time: "2023-03-16 7:45",
                 duration: "06:00" }])
