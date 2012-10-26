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
#  album_id   :integer
#

class Song < ActiveRecord::Base
  attr_accessible :name, :price, :audiofile, :album_id, :artist_ids

  has_and_belongs_to_many :artists
  belongs_to :album

  has_many :purchases
  has_many :users, :through => :purchases

  mount_uploader :audiofile, AudiofileUploader
end
