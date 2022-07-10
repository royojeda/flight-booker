# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all

Airport.create([{ code: "LHR", name: "London Heathrow", utc_offset: "+01:00" },
                { code: "HND", name: "Tokyo Haneda", utc_offset: "+09:00" },
                { code: "DXB", name: "Dubai", utc_offset: "+04:00" },
                { code: "JFK", name: "New York JFK", utc_offset: "-04:00"  },
                { code: "YVR", name: "Vancouver", utc_offset: "-07:00" }])
