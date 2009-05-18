ActionController::Routing::Routes.draw do |map|
  #map.resources :blog_posts, :as => 'blog'
  
  map.about 'about', :controller => 'site', :action => 'index'
  map.work 'work', :controller => 'site', :action => 'index'
  map.contact 'contact', :controller => 'site', :action => 'index'
  map.blog_posts 'blog', :controller => 'site', :action => 'index'

  map.root :controller => 'site', :action => 'index'
end
