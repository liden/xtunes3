# == Schema Information
#
# Table name: faves
#
#  id         :integer          not null, primary key
#  favorite   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fave < ActiveRecord::Base
  attr_accessible :favorite
end
