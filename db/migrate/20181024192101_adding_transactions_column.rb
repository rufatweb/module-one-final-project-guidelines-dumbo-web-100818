class AddingTransactionsColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :time, :string
    add_column :transactions, :executed_price, :float

  end
end
