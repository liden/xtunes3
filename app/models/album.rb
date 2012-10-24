class Album < ActiveRecord::Base
  attr_accessible :name, :release_year
  has_many :songs
end
