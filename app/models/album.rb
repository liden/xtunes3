# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cover_file :string(255)
#  release    :date
#

class Album < ActiveRecord::Base
  attr_accessible :name, :release, :cover_file, :remote_cover_file_url, :song_ids
  has_and_belongs_to_many :songs

  has_many :artists, :through => :songs

  mount_uploader :cover_file, PixfileUploader

end
