class Purchase < ActiveRecord::Base
  attr_accessible :price_paid, :user_id, :song_id
  belongs_to :user
  belongs_to :song
end
