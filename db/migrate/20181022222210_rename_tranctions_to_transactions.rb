class RenameTranctionsToTransactions < ActiveRecord::Migration[5.0]
  def change
    rename_table :tranctions, :transactions
  end
end
