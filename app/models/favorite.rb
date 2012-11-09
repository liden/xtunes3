# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  song_id    :integer
#  user_id    :integer
#  is_fave    :boolean          default(FALSE)
#

class Favorite < ActiveRecord::Base
  attr_accessible :is_fave, :user_id, :song_id
  belongs_to :user
  belongs_to :song
end
