class AddDirectionsToRecipe < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.text :direction, null: false
      t.belongs_to :recipe, index: true 
    end
  end
end
