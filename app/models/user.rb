class User < ActiveRecord::Base
  has_secure_password

  has_many :dreams
  has_many :comments
  validates :name, presence:true
  validates :name, uniqueness:true
  validates :password, presence:true

  # def self.authenticate(name,password)
  #   @user = User.find_by(name: name)
  #   if @user && @user.password == password
  #     @user
  #   else
  #     nil
  #   end
  # end
end
