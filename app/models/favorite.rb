# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  favorite   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  song_id    :integer
#  user_id    :integer
#

class Favorite < ActiveRecord::Base
  attr_accessible :favorite, :user_id, :song_id
  belongs_to :user
  belongs_to :song
end
