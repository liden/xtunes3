class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :user_type

  has_many :purchases
  has_many :songs, :through => :purchases

end
