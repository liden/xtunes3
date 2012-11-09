class FavoritesController < ApplicationController

  def update
    favorite = Favorite.find(params[:id])
    song     = favorite.song
    favorite.toggle!(:is_fave)
    if favorite.is_fave?
      redirect_to songs_collection_path, notice: "#{song.name} is now one of your favorites."
    else
      redirect_to songs_collection_path, notice: "#{song.name} is no longer one of your favorites."
    end
  end

end