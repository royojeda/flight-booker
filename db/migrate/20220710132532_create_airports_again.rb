class CreateAirportsAgain < ActiveRecord::Migration[7.0]
  def change
    drop_table :airports, if_exists: true
    create_table :airports do |t|
      t.string :code
      t.string :name
      t.string :utc_offset

      t.timestamps
    end
  end
end
