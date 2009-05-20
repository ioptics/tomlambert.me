ActionController::Routing::Routes.draw do |map|
  map.resources :images, :as => 'work'
  map.resources :posts, :as => 'blog'
  map.resources :contacts

  map.about 'about', :controller => 'site', :action => 'about'
  map.root :controller => 'site', :action => 'index'
end
