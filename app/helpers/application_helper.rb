# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def authorised?
    session[:authorised] || false
  end
  
  def show_flash
    [:success, :error, :notice, :warning, :message].collect do |key|
      content_tag(:div, "<p>#{flash[key]}</p>", :class => "flash flash_#{key}") unless flash[key].blank?
    end.join
  end
end
