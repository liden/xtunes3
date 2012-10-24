class Song < ActiveRecord::Base
  attr_accessible :name, :price, :audiofile, :album_id
  has_and_belongs_to_many :artists
  belongs_to :album
  mount_uploader :audiofile, AudiofileUploader
end