class ChangeFlightTimesToString < ActiveRecord::Migration[7.0]
  def change
    change_table :flights do |t|
      t.change :departure_time, :string
      t.change :arrival_time, :string
    end
  end
end
