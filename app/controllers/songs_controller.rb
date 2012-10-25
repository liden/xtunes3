class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    @artists = Artist.all
  end

  def create
    @song = Song.new(params[:song])

    if @song.save
      redirect_to songs_path, notice: 'song was successfully created.'
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
    @artists = Artist.all
  end

  def update
    @song = Song.find(params[:id])

    if @song.update_attributes(params[:song])
      redirect_to songs_path, notice: 'song was successfully updated.'
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
