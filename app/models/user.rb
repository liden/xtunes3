class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :user_type
end
