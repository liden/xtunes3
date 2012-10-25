class Song < ActiveRecord::Base
  attr_accessible :name, :price, :audiofile, :album_id, :artist_ids

  has_and_belongs_to_many :artists
  belongs_to :album

  has_many :purchases
  has_many :users, :through => :purchases

  mount_uploader :audiofile, AudiofileUploader
end