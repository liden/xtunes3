class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      redirect_to home_path, :notice => "#{current_user.name} is in the house."
    else
      flash.now.alert = 'Oops! The email or password you entered is invalid. Please try again.'
      render :new
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to home_path, :notice => 'Elvis has left the building. Goodbye, and come back again soon!'
  end

end