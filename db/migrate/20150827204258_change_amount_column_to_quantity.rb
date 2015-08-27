class ChangeAmountColumnToQuantity < ActiveRecord::Migration
  def change
    rename_column(:amounts, :amount, :quantity)
  end
end
