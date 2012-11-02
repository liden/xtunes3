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

  def not_authorized
    redirect_to login_path, alert: 'Please login as an admin.' if !admin_user.nil?
  end

end