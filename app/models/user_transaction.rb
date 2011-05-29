class UserTransaction < ActiveRecord::Base
  has_one :user
  has_one :option
  has_one :order
  has_one :user_transaction_type
end
