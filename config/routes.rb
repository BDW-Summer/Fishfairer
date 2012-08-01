SampleApp::Application.routes.draw do
<<<<<<< HEAD
 

 get "users/new"
 
=======
# get "users/new"
>>>>>>> d2f0b8107b16a9bfbcdf362e415f7ae5bb90da51
 root to: 'static_pages#home'
 resources :users
  match 'lakes/:name_of_lake' => "lakes#show", :via => :get
   match 'lakes' => "lakes#index", :via => :get
 resources :lakes



 
 resources :sessions, only: [:new, :create, :destroy]

<<<<<<< HEAD
 
  #match 'lakes/:name_of_lake' => 'lakes#show', :as => :lake
  match '/lakes' => 'lakes#index', :as => :id 	
  match '/lakes', 	to: 'lakes#index'
  match 'users/signup',  to: 'users#new'
=======
#match 'Api/weather/:zip' => 'Api#get_weather_for_zip'
  match '/signup',  to: 'users#new'
>>>>>>> d2f0b8107b16a9bfbcdf362e415f7ae5bb90da51
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/signup',  to: 'users#new'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  
  
  match "/auth/:provider/callback" => "sessions#new"
  match "/signout" => "sessions#destroy", :as => :signout
	
	

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
