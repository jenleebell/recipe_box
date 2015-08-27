class CreateAmountsTable < ActiveRecord::Migration
  def change
    create_table(:amounts) do |t|
      t.column(:recipe_id, :integer)
      t.column(:ingredient_id, :integer)
      t.column(:quantity, :string)

      t.timestamps()
    end
  end
end
