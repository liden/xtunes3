class Artist < ActiveRecord::Base
  attr_accessible :bio, :dob, :name, :photo
  has_and_belongs_to_many :songs
end
