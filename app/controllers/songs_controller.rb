
class SongsController < ApplicationController
  before_filter :not_authorized, only: [:new, :create, :edit, :update, :destroy]
  before_filter :must_be_current_user, only: [:own]

  def buy
    if current_user
      song = Song.find(params[:id])
        if (!current_user.songs.include?(song))
          current_user.songs << song
          current_user.save
        end
      redirect_to songs_collection_path, notice: "\"#{song.name}\" was added to your collection."
    else
      must_be_current_user
    end
  end

  def own
    @songs = current_user.songs
    @search = @songs.search(params[:q])
    @songs = @search.result
  end

  def index
    @search = Song.search(params[:q])
    @songs = @search.result
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    @song.artists.build
    @song.albums.build
  end

  def create
    @song = Song.new(params[:song])

    if @song.save
      redirect_to song_path(@song), notice: 'song was successfully created.'
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    if @song.update_attributes(params[:song])
      redirect_to song_path(@song), notice: 'song was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to songs_path
  end
end
