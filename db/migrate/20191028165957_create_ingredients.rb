class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :grams
      t.string :colour
      t.string :nick_name

      t.timestamps
    end
  end
end
