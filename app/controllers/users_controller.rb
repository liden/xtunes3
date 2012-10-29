class UsersController < ApplicationController
  before_filter :authorize, only: [:index, :destroy]

  def index
    if current_user && current_user.admin
      @users = User.order(:name)
    else
      redirect_to login_path
    end
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
      session[:user_id] = @user.id
      redirect_to home_path, notice: 'Hello! Welcome to xtunes!'
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

end