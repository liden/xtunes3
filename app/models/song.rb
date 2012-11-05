# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  audiofile  :string(255)
#

class Song < ActiveRecord::Base
  attr_accessible :name, :price, :audiofile, :remote_audiofile_url, :album_ids, :genre_ids, :artist_ids, :user_ids

  validates :name, :price, :audiofile, :presence => true

  has_and_belongs_to_many :albums
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :mixtapes
  has_and_belongs_to_many :users

  # has_many :purchases
  # has_many :users, :through => :purchases

  mount_uploader :audiofile, AudiofileUploader

end
