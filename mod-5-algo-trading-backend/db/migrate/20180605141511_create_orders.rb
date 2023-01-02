
class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :account_id
      t.decimal :quantity
      t.decimal :price
      t.boolean :limit
      t.string :trading_pair
      t.integer :usd_id
      t.integer :position_id
      t.string :buy_or_sell

      t.timestamps
    end
  end
end