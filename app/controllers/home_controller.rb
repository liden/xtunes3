class HomeController < ApplicationController
  def home
    @songs = Song.all
  end
end