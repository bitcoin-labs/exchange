class Option < ActiveRecord::Base
  has_one :user
  has_one :user_transaction
  
  
end