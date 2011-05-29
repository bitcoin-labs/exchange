class CreateUserTransactionTypes < ActiveRecord::Migration
  def self.up
    create_table :user_transaction_types do |t|
      t.boolean :asActive
      t.string :name
      
      t.timestamps
    end
  end

  def self.down
    drop_table :user_transaction_types
  end
end
