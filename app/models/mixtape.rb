# == Schema Information
#
# Table name: mixtapes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  mximg_file :string(255)
#

class Mixtape < ActiveRecord::Base
  attr_accessible :name, :mximg_file, :remote_mximg_file_url,  :user_id, :song_ids

  validates :name, :presence => true

  belongs_to :user
  has_and_belongs_to_many :songs

  mount_uploader :mximg_file, PixfileUploader

end
