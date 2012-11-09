class FavoritesController < ApplicationController

  def edit
    favorite = Favorite.find(params[:id])
    if favorite.is_fave == true
      favorite.is_fave == false
      favorite.save
      redirect_to songs_collection_path, notice: "#{song.name} is no longer one of your favorites."
    else
      favorite.is_fave == true
      favorite.save
      redirect_to songs_collection_path, notice: "#{song.name} is now one of your favorites."
    end
  end

end