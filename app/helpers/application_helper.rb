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

  def header_helper style = ""
    if user_signed_in?
      content_tag(:ul, class: "#{style}") do
        content_tag(:li, (link_to t('menu.account'), edit_user_registration_path)) +
        content_tag(:li, (link_to t('menu.log_out'), destroy_user_session_path))
      end
    else
      content_tag(:ul, class: "nav navbar-nav navbar-right") do
        content_tag(:li, (link_to t('menu.log_in'), new_user_session_path))
      end
    end
  end

  def footer_helper style = ""
    content_tag(:ul, class: "#{style}") do
      content_tag(:li, (link_to t('footer.help'), help_path)) +
      content_tag(:li, (link_to t('footer.contact'), contact_path)) +
      content_tag(:li, (link_to t('footer.languages.en'), change_locale_path(:en))) +
      content_tag(:li, (link_to t('footer.languages.ru'), change_locale_path(:ru)))
    end
  end

  def breadcrumb_helper
    case controller_name
      when 'master'
        return t('menu.dashboard')
      when 'recipes'
        return t('menu.recipes')
      when 'cuisines'
        return t('menu.cookbook')
      when 'help'
        return t('menu.help')
      when 'calendar'
        return t('menu.calendar')
      else
        return t('menu.dashboard')
      end
  end
end
