class User < ActiveRecord::Base

  has_secure_password
  has_many :engagement
  has_many :condition

end
