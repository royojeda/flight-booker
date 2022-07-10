class RearrangeAirportColumns < ActiveRecord::Migration[7.0]
  def change
    change_table :airports do |t|
      t.remove :code, :utc_offset
    end
    add_column :airports, :code, :string, first: true
    add_column :airports, :utc_offset, :string, after: :name
  end
end
