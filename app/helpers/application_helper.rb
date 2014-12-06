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

  def display_partial(title, partial)
    capture_haml do 
      haml_partial(title, partial)
    end
  end

  def show_items_on_panel(title, items, empty_message, partial=null)
    capture_haml do
      haml_tag('div.panel.panel-primary') do 
        haml_title(title)
        haml_tag('div.panel-body-primary') do
          haml_item_list(items, empty_message, partial)
        end
      end
    end
  end

  def super_panel(list_title, items, empty_message, new_title, partial)
    capture_haml do
      haml_tag('div.panel.panel-primary') do 
        haml_title(list_title)
        haml_tag('div.panel-body-primary') do
          haml_item_list(items, empty_message)
          haml_partial(new_title, partial)
        end
      end
    end
  end

  def link_to_back
    link_to 'Back', :back, class: 'btn-back'
  end

end
