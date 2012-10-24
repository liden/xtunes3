class Album < ActiveRecord::Base
  attr_accessible :name, :release_year, :genre_id
  belongs_to :genre
  has_many :songs
end