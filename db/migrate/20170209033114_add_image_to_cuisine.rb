class AddImageToCuisine < ActiveRecord::Migration[5.0]
  def change
    add_column :cuisines, :image_url, :text
  end
end
