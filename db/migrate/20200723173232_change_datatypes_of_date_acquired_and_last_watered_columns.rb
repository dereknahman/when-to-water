class ChangeDatatypesOfDateAcquiredAndLastWateredColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :plants, :date_acquired, 'date USING CAST(date_acquired AS date)'
    change_column :plants, :last_watered, 'date USING CAST(last_watered AS date)'
  end
end
