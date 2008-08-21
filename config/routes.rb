ActionController::Routing::Routes.draw do |map|
  map.resources :students
  map.root :students
  map.connect ":controller/:action/:id"
end
