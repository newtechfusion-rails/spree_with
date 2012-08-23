#Spree::Core::Engine.routes.prepend do

#Spree::Core::Engine.routes.append do
#
#  namespace :spree do
#    resources :hello_my_extensions do
#
#  # Add your extension routes here
#      match '/my_page_subscription', :to => "spree/hello_my_extensions#my_page_subscription", :as => 'my_page_subscription'


 #post "/my_page_subscription" =>"hello_my_extensions#my_page_subscription"
 #match '/my_page_subscription', :to => "hello_my_extensions#my_page_subscription", :as => 'my_page_subscription'
 #match "hello_my_extensions/my_page_subscription" => "hello_my_extensions#my_page_subscription"
#    end
#   end
#end
