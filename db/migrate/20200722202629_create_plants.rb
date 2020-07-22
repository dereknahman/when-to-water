class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :title
      t.string :date_acquired
      t.string :lighting_preference
      t.string :watering_frequency
      t.string :last_watered

      t.timestamps
    end
  end
end
