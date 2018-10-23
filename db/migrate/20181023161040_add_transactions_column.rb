class AddTransactionsColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :number_of_stocks, :integer
  end
end
