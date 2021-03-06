# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ActiveRecord::Base
  attr_accessible :name, :song_ids

  validates :name, :presence => true, :uniqueness => true

  has_and_belongs_to_many :songs
  has_many :albums, :through => :songs

end
