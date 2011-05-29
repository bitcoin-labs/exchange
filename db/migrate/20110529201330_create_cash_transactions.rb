class CreateCashTransactions < ActiveRecord::Migration
  def self.up
    create_table :cash_transactions do |t|
      t.integer :user_id
      t.integer :cash
      t.integer :admin_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cash_transactions
  end
end
