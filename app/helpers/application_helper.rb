module ApplicationHelper

  def human_boolean(boolean)
      boolean ? 'Yes' : 'No'
  end

  def link_to_in_li(body, url, html_options = {})
  active = "active" if current_page?(url)
  content_tag :li, class: active do
    link_to body, url, html_options
  end
end

end
