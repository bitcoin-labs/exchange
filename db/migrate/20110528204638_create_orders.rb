class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :amount
      t.integer :price
      t.string :type
      t.integer :amount_remain
      t.integer :user_id
      t.timestamp :timestamp

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
