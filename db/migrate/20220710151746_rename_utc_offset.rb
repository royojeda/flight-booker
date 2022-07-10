class RenameUtcOffset < ActiveRecord::Migration[7.0]
  def change
    rename_column :airports, :utc_offset, :time_zone
  end
end
