class AddDepositColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :deposit, :float
  end
end
