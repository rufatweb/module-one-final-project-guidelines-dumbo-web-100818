class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.float :cash
      t.integer :transaction_id
    end
  end
end
