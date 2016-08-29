module ApplicationHelper
  def current_active_tab(controller_name)
    params[:controller] == controller_name ? 'active' : ''
  end
end
