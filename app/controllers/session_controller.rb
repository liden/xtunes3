class SessionController < ApplicationController

  def new
  end

  def create
    email = params[:email]
    pass = params[:password]

    user = User.find_by_email(email)

    if user && user.authenticate(pass)
      session[:user_id] = user.id
      redirect_to home_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path
  end

end