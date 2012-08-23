#module Spree
#  Spree::ProductsController.class_eval do
#    before_filter :load_product, :only => :show
#    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
#    helper 'spree/taxons'
#
#    respond_to :html
#
#
#
#    def index
#      @searcher = Config.searcher_class.new(params)
#      @products = @searcher.retrieve_products
#      respond_with(@products)
#      puts("***************************This is index method")
#    end
#
#    def show
#      return unless @product
#
#      @variants = Variant.active.includes([:option_values, :images]).where(:product_id => @product.id)
#      @product_properties = ProductProperty.includes(:property).where(:product_id => @product.id)
#
#      referer = request.env['HTTP_REFERER']
#      if referer
#        referer_path = URI.parse(request.env['HTTP_REFERER']).path
#        if referer_path && referer_path.match(/\/t\/(.*)/)
#          @taxon = Taxon.find_by_permalink($1)
#      end
#
#      end
#
#      respond_with(@product)
#      puts("***************************This is show method")
#    end
#
#    def aboutus
#      puts("***************************This is aboutus method")
#    end
#
#    private
#      def accurate_title
#        @product ? @product.name : super
#        puts("***************************This is acurate_title method")
#      end
#
#      def load_product
#        @product = Product.active.find_by_permalink!(params[:id])
#        puts("***************************This is load_product method")
#      end
#  end
#end