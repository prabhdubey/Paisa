class ProductsController < ApplicationController

	
	 
	 def index
			
			@categories=Category.all

	  		if params[:category_id]
		    	@products = Product.paginate(:page => params[:page], :per_page => 28).search(params[:search]).order("created_at DESC").where(:category_id => params[:category_id])
		    	
		    	#@products.dis_per=((@products.actual_price-@products.dis_price)/@products.actual_price)*100
		    	
		    else
		    	print "no"
		    	 @products = Product.paginate(:page => params[:page], :per_page => 28).search(params[:search]).order("created_at DESC")
	   			# @products.dis_per=((@products.actual_price-@products.dis_price)/@products.actual_price)*100

			end
      	   
  		 
	 end
	

	

	  private

	  def product_params
	      params.require(:product).permit(:id,:name, :avatar, :description, :url, :actual_price,:dis_price,:category_id,:dis_per)
	  end

end
