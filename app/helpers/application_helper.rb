module ApplicationHelper
  def admin_only_link_to(body, url, html_options={})
    if current_user_is_admin?
      link_to body, url, html_options
    end
  end

  def current_user_is_admin?
    if user_signed_in?
      return current_user.admin
    end
  end
end
