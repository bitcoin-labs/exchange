class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.text :token
      t.text :email
      t.text :password_hash

      t.timestamps
    end
    add_index :users, :token, :unique => true
  end

  def self.down
    drop_table :users
  end
end
