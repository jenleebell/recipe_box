class CreateAmounts < ActiveRecord::Migration
  def change
    create_table(:amounts) do |t|
      t.column(:amount, :string)

      t.timestamps()
    end
  end
end
