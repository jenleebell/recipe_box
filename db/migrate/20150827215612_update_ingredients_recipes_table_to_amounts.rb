class UpdateIngredientsRecipesTableToAmounts < ActiveRecord::Migration
  def change
    rename_table(:ingredients_recipes, :amounts)
    add_column(:amounts, :quantity, :string)
  end
end
