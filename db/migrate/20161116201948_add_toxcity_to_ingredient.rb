class AddToxcityToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :toxcity, :string
  end
end
