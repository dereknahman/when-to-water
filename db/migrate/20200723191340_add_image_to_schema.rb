class AddImageToSchema < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :main_image, :text
  end
end
