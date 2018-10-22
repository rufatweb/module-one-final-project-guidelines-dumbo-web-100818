class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.float :value
      t.string :category
      t.integer :transaction_id
    end
  end
end
