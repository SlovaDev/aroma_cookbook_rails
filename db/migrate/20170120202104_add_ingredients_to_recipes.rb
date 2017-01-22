class AddIngredientsToRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :item, null: false
      t.integer :quantity, null: false
      t.string :measure
      t.belongs_to :recipe, index: true 

      t.timestamps
    end
  end
end
