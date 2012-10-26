class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_for_logged_in_user

  private

  def check_for_logged_in_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = nil
    end
  end
end