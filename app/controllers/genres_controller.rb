class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  # def show
  #   @genre = Genre.find(params[:id])
  # end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params[:genre])

    if @genre.save
      redirect_to genres_path, notice: 'genre was successfully created.'
    else
      render :new
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    if @genre.update_attributes(params[:genre])
      redirect_to genres_path, notice: 'genre was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy

    redirect_to genres_path
  end  

end