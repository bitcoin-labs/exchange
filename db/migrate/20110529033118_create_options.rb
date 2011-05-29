class CreateOptions < ActiveRecord::Migration
  def self.up
    create_table :options do |t|
      t.string :user_ID
      t.datetime :startTime
      t.datetime :endTime
      t.datetime :creationTime
      t.integer :spotPrice
      t.integer :type
      t.integer :numberCoin
      t.integer :buyerID
      t.datetime :purchaseTime

      t.timestamps
    end
  end

  def self.down
    drop_table :options
  end
end
