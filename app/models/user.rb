class User < ActiveRecord::Base
  has_secure_password

  has_many :dreams
  validates :name, presence:true
  validates :name, uniqueness:true
  validates :email, presence:true
  validates :email, uniqueness:true
  validates :password, presence:true
end
