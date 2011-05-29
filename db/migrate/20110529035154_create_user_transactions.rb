class CreateUserTransactions < ActiveRecord::Migration
  def self.up
    create_table :user_transactions do |t|
      t.integer :user_transaction_id
#      t.integer :user_transaction_type
#      t.integer :isActive
#      t.string :name
      
      t.timestamps
    end
  end

  def self.down
    drop_table :user_transactions
  end
end
