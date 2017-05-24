class CreateEntries < ActiveRecord::Migration[5.0]
  def change
  	create_table :entries do |t|
      t.integer :recipe_id, null: false
      t.date	:entry_date, null: false
      
      t.timestamps
    end
  end
end
