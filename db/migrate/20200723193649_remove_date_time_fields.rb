class RemoveDateTimeFields < ActiveRecord::Migration[6.0]
  def change
    remove_column :plants, :date_acquired, :date
    remove_column :plants, :last_watered, :date
  end
end
