class DeleteAmountsFromIngredients < ActiveRecord::Migration
  def change
    change_table(:ingredients) do |t|
      t.remove(:amount)
    end
  end
end
