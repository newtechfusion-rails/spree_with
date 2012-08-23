Spree::Core::Engine.routes.draw do

  resources :feedback,
   :controller =>'feedback_extension/feedback'
  # Add your extension routes here
    
match 'feedback' =>'feedback_extension/feedback#feedback', :as=>:feedback_extension
 
end
