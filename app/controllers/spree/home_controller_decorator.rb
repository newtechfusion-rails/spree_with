module Spree
 class HomeController < BaseController

# Spree::HomeController.class_eval do
    helper 'spree/products'
   respond_to :html

   def index
     @searcher = Spree::Config.searcher_class.new(params)
     @products = @searcher.retrieve_products
     respond_with(@products)
    end

   def home_method
     
        @subscrptn= HomeDemo.new()
          puts("....................sub...................#{@subscrptn.inspect}")
            if params[:sub]
              @subscrptn.product_name = params[:sub][:product_name]
              @subscrptn.save
              redirect_to(:controller=>"home",:action=>"index")
              flash[:notice]="Success!"
     end
      
   end
  end
end