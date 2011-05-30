ActionController::Routing::Routes.draw do |map|
  map.forgot_password '/forgot_password', :controller => 'passwords', :action => 'new'
  map.change_password '/change_password/:reset_code', :controller => 'passwords', :action => 'reset'
  map.resources :passwords

  map.resources :user_sessions 
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users
  map.activate  '/activate/:activation_code', :controller =>  'users', :action => 'activate', :activation_code => nil
  map.root :controller => 'user_sessions', :action => 'new'
 
 map.connect ':controller/:action/:id'
 map.connect ':controller/:action/:id.:format'
end
