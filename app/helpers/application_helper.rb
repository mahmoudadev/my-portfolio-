module ApplicationHelper

  def login_helper
    if current_user.is_a?(User)
      link_to "logout", destroy_user_session_path, method: :delete
    else
      (link_to "login", new_user_session_path) + "<br>".html_safe +
      (link_to "register", new_user_registration_path)
    end

  end

  def source_helper
    if session[:source]
      greeting = "Thanks for Visiting us from #{session[:source]}"
      content_tag(:h4, greeting , class:"")
    end
  end


end
