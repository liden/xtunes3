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
  attr_accessible :name, :price, :audiofile, :album_ids, :genre_ids, :artist_ids

  has_and_belongs_to_many :albums
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :genres

  has_many :purchases
  has_many :users, :through => :purchases

  mount_uploader :audiofile, AudiofileUploader

end
