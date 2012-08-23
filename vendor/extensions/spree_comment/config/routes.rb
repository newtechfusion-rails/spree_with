Spree::Core::Engine.routes.draw do
  # Add your extension routes here
   
match "/comments",:to=>"spree/comment/comment#commenting", :as=>"commenting"

 
end
