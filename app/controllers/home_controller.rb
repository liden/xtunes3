class HomeController < ApplicationController
  def home
    @songs = Song.all
    @songs = @songs[1, 3]
  end
end