# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  dob        :date
#  bio        :text
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ActiveRecord::Base
  attr_accessible :bio, :dob, :name, :photo
  has_and_belongs_to_many :songs

end
