class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name)
  end

  def show
    @artist = Artist.find(params[:q])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params[:artist])

    if @artist.save
      redirect_to artists_path, notice: 'artist was successfully created.'
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update_attributes(params[:artist])
      redirect_to artists_path, notice: 'artist was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end

end