class RemoveWateringFrequencyForNow < ActiveRecord::Migration[6.0]
  def change
    remove_column :plants, :watering_frequency, :date
  end
end
