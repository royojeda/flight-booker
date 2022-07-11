class RebuildTables < ActiveRecord::Migration[7.0]
  def change
    create_table "airports", force: :cascade do |t|
      t.string "code"
      t.string "name"
      t.string "time_zone"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "booking_transactions", force: :cascade do |t|
      t.integer "passenger_id"
      t.integer "booking_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["booking_id"], name: "index_booking_transactions_on_booking_id"
      t.index ["passenger_id"], name: "index_booking_transactions_on_passenger_id"
    end

    create_table "bookings", force: :cascade do |t|
      t.integer "flight_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["flight_id"], name: "index_bookings_on_flight_id"
    end

    create_table "flights", force: :cascade do |t|
      t.string "departure_time"
      t.string "arrival_time"
      t.string "duration"
      t.integer "departure_airport_id"
      t.integer "arrival_airport_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "departure_date"
      t.index ["arrival_airport_id"], name: "index_flights_on_arrival_airport_id"
      t.index ["departure_airport_id"], name: "index_flights_on_departure_airport_id"
    end

    create_table "passengers", force: :cascade do |t|
      t.string "name"
      t.string "email"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    add_foreign_key "bookings", "flights"
  end
end
