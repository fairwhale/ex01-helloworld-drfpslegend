class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.integer :account_id
      t.decimal :quantity
      t.string :trading_pair

      t.timestamps
    end
  end
end
