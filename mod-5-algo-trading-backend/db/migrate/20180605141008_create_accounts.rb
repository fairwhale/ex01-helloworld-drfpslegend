
class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :email, null: false
      t.decimal :cash_deposited

      t.timestamps
    end
  end
end