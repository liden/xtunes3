class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  end
  helper_method :current_user

  def admin_user
    @admin_user ||= !current_user.nil? && current_user.admin
  end
  helper_method :admin_user

def not_current_user
  if !current_user
      redirect_to home_path, alert: 'Please sign up or login to buy and play songs and create and play mixtapes.'
  end
end

  def not_authorized
    if !admin_user
      redirect_to login_path, alert: 'Please login as an admin.'
    end
  end

end