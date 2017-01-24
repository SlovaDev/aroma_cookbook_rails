class ChangeIngredientQuantityToFloat < ActiveRecord::Migration[5.0]
  def change
    change_table :ingredients do |i|
      i.change :quantity, :float
    end
  end
end
