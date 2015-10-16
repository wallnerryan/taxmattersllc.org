Taxmatters::Application.routes.draw do
  get "emailer/index"

  get "emailer/create"

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  
  #home
  match '/' => 'home#index'
  
  #about
  match '/about/' => 'about#index'
  
  #services
  match '/services/' => 'services#index'
  
  #links
  match '/links/' => 'links#index'
  
  #location
  match '/location/' => 'location#index'
  
  #contact
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  #staff
  match '/staff/' => 'staff#index'
  
end
