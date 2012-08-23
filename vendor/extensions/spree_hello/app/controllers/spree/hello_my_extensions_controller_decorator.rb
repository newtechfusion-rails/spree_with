#Spree::HelloMyExtensionController < BaseController do
#
#class Spree::HelloMyExtensionController < Spree::ResourceController
#
#module Spree
##  class HelloMyExtensionsController < BaseController
#
#    class HelloMyExtensionsController < ResourceController
#   puts(".........$$$$$$$$$$$$$$..............This is hello_my_extension_controller")
#
#      def my_page_subscription
#        puts(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{params.inspect}")
#        @subscrptn= HelloMyExtensions.new()
#        puts("....................sub...................#{@subscrptn.inspect}")
#          if params[:sub]
#            @subscrptn.product_name = params[:sub][:product_name]
#          end
#
#        end
#
#  end
#end