
require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  
  belongs_to :user_transaction
  belongs_to :order
  belongs_to :option

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
