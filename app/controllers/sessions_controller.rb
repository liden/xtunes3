class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path, :notice => "#{current_user.name} is in the house."
    else
      flash.now.alert = 'Oops! The email or password you entered is invalid. Please try again.'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path, :notice => 'Elvis has left the building. Goodbye, and come back again soon!'
  end

end