class CreateAlgorithms < ActiveRecord::Migration[5.1]
  def change
    create_table :algorithms do |t|
      t.string :name
      t.integer :account_id
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
