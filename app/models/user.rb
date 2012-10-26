# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_type       :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :user_type, :password, :password_confirmation

  has_many :purchases
  has_many :songs, :through => :purchases

  validates :name, :email, :presence => true
  validates :email, :uniqueness => true

  has_secure_password

end
