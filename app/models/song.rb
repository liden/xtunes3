class Song < ActiveRecord::Base
  attr_accessible :name, :price, :audiofile
  mount_uploader :audiofile, AudiofileUploader
end
