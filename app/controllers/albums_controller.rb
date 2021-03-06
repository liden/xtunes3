class AlbumsController < ApplicationController
  before_filter :not_authorized, only: [:new, :create, :edit, :update, :destroy]

  def own

  end

  def index
    @albums = Album.order(:name)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])

    if @album.save
      redirect_to album_path(@album), notice: 'album was successfully created.'
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])

    if @album.update_attributes(params[:album])
      redirect_to album_path(@album), notice: 'album was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    redirect_to albums_path
  end

end