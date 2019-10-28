class CreateFridges < ActiveRecord::Migration[6.0]
  def change
    create_table :fridges do |t|
      t.string :name
      t.string :brand
      t.boolean :has_freezer
      t.integer :max_ingredients
      t.string :colour

      t.timestamps
    end
  end
end
