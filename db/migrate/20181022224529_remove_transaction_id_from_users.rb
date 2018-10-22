class RemoveTransactionIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :transaction_id
  end
end
