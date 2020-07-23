class AddThumbImageToSchema < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :thumb_image, :text
  end
end
