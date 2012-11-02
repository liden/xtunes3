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
#  auth_token      :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :age, :gender, :avatar_file, :remote_avatar_file_url, :password, :password_confirmation, :admin, :song_ids

  has_and_belongs_to_many :songs

  # has_many :purchases
  # has_many :songs, :through => :purchases

  validates :name, :email, :gender, :age, :presence => true
  validates :email, :name, :uniqueness => true

  mount_uploader :avatar_file, PixfileUploader

  has_secure_password
  validates_presence_of :password, :on => :create
  before_create { generate_token(:auth_token) }

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

end
