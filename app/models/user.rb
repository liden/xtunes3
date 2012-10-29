# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  admin           :boolean          default(FALSE)
#  age             :integer
#  gender          :string(255)
#  avatar_file     :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :age, :gender, :avatar_file, :password, :password_confirmation, :song_ids

  has_and_belongs_to_many :songs

  # has_many :purchases
  # has_many :songs, :through => :purchases

  validates :name, :email, :presence => true
  validates :email, :uniqueness => true

  has_secure_password

end
