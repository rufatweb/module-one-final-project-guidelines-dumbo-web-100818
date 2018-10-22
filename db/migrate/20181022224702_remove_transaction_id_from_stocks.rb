class RemoveTransactionIdFromStocks < ActiveRecord::Migration[5.0]
  def change
    remove_column :stocks, :transaction_id
  end
end
