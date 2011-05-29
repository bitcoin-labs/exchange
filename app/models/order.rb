class Order < ActiveRecord::Base
  validates :amount, :presence => true
  validates :price, :presence => true
  validates :type, :presence => true
  validates :user_id, :presence => true
  validates :created_at, :presence => true
  
  has_one :user
  has_one :user_transaction
end
