class Order < ActiveRecord::Base
  validates :amount, :presence => true
  validates :price, :presence => true
  validates :type, :presence => true
  validates :user_id, :presence => true
  validates :created_at, :presence => true
end
