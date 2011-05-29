class AddParentIdToOptions < ActiveRecord::Migration
  def self.up
    add_column :options, :parent_id, :integer
  end

  def self.down
    remove_column :options, :parent_id
  end
end
