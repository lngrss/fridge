class RemoveNicknameAddExpiryToIngredient < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :expired, :boolean
    remove_column :ingredients, :nick_name, :string
  end
end
