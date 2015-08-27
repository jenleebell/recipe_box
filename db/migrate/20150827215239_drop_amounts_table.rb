class DropAmountsTable < ActiveRecord::Migration
  def change
    drop_table(:amounts)
  end
end
