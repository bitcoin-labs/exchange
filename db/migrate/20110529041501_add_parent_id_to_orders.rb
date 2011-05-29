class AddParentIdToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :parent_id, :integer
  end

  def self.down
    remove_column :orders, :parent_id
  end
end
