class AddOptionOrderIdDropTransactionId < ActiveRecord::Migration
  def self.up
    add_column :user_transactions :option_id :integer
    add_column :user_transactions :order_id :integer
  end

  def self.down
    remove_column :user_transactions :transaction_id
  end
end
