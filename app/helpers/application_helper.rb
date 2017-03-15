module ApplicationHelper
  # Returns page title on per-page basis.
  def full_title(page_title = '')
    base_title = t('menu.title')
    if page_title.empty?
      base_title
    else
      page_title
    end
  end

  def header_helper
     if user_signed_in?
      content_tag(:ul, class: "nav navbar-nav navbar-right") do
        content_tag(:li, (link_to t('menu.new_recipe'), new_recipe_path)) +
        content_tag(:li, (link_to t('menu.cookbook'), cuisines_path)) +
        content_tag(:li, (link_to t('menu.edit_account'), edit_user_registration_path)) +
        content_tag(:li, (link_to t('menu.log_out'), destroy_user_session_path, method: :delete))
      end
     else
      content_tag(:ul, class: "nav navbar-nav navbar-right") do
        content_tag(:li, (link_to t('menu.log_in'), new_user_session_path)) +
        content_tag(:li, (link_to t('menu.sign_up'), new_user_registration_path))
      end
     end
   end
end
