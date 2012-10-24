class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to users_path, notice: 'user was successfully created.'
    else
      render :new
    end
  end

  # def edit
  #   @album = Album.find(params[:id])
  # end

  # def update
  #   @album = Album.find(params[:id])

  #   if @album.update_attributes(params[:album])
  #     redirect_to albums_path, notice: 'album was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @album = Album.find(params[:id])
  #   @album.destroy

  #   redirect_to albums_path
  # end  

end