# == Schema Information
#
# Table name: purchases
#
#  id            :integer          not null, primary key
#  price_paid    :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#  song_id       :integer
#  purchase_date :date
#

class Purchase < ActiveRecord::Base
  attr_accessible :price_paid, :purchase_date, :user_id, :song_id
  belongs_to :user
  belongs_to :song
end
