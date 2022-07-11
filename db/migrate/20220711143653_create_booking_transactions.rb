class CreateBookingTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_transactions do |t|
      t.belongs_to :passenger
      t.belongs_to :booking

      t.timestamps
    end

    remove_column :bookings, :passenger_id
  end
end
