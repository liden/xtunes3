module ApplicationHelper

    def show_login_link(user)
    if user
      link_to user.email, logout_path
    else
      link_to 'Login', login_path
    end
  end

end
