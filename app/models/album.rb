# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  release_year :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  cover_file   :string(255)
#

class Album < ActiveRecord::Base
  attr_accessible :name, :release_year, :cover_file, :song_ids
  has_and_belongs_to_many :songs

  has_many :artists, :through => :songs

  mount_uploader :cover_file, AudiofileUploader

end
