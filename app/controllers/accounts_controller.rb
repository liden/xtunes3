class AccountsController < ApplicationController

  def register
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to home_path
    else
      render :register
    end
  end

end