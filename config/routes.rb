LatestStore::Application.routes.draw do

  namespace :spree do resources :feedbacks end

 

namespace :spree do
  resources :hello_my_extensions do
    
  end
end
  

  get "trc_theme/newhome"

  get "trc_theme/my_page"

  match "/emailer/index" =>"emailer#index"
  
    mount Spree::Core::Engine, :at => '/'

  post '/my_page_subscription', :to => "spree/hello_my_extensions#my_page_subscription", :as => 'my_page_subscription'
  post '/my_page_subscription', :to => "spree/checkout#registration", :as => 'my_page_subscription'

  match 'aboutus/', :to => "spree/products#aboutus", :as => 'aboutus'

  get "/newhome/my_page" =>"newhome#my_page"

  match 'spree/checkout/edit' => 'spree/checkout#edit'
#  match 'my_page_subscription/', :to => "spree/products#my_page_subscription", :as => 'my_page_subscription'

  #match "/my_page_subscription" =>"hello_my_extensions#my_page_subscription"

  match "/checkout/my_method",  :to=>"spree/checkout#my_method"
  
#  match "/home/home_method", :to=>"home#home_method"

  match "/home/home_method", :to=>"spree/home#home_method", :as=>"home_method"
# match "/contactus/new",:to=>"spree/contactus#new", :as=>"new"

  match "/contact_us/contacts/new",:to=>"spree/contact_us/contacts#new", :as=>"new"

  

#  Spree::Core::Engine.routes.prepend do
#  # Your new routes
#    match "/comment/comment/commenting",:to=>"spree/comment/comment#commenting", :as=>"commenting"
#  end





  #   match "/feedback/feedback", :to=>"spree/feedback#feedback", :as=>"feedback"
 
#    resources :products
#  match 'about_us/', :to => "products#about_us"
#
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
