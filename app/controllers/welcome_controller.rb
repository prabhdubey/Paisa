class WelcomeController < ApplicationController
   def index
  		@categories=Category.all
  		@products=Product.all
	  		if params[:category_id]
		    	@products = Product.search(params[:search]).order("created_at DESC").where(:category_id => params[:category_id])
		    	
		    else
		    	print "no"
		    	@products=Product.search(params[:search]).order("created_at DESC")
	   			
				  
			end
        
  		 
	 end
	

	  private

	  def product_params
	      params.require(:product).permit(:id,:name, :avatar, :description, :url, :actual_price,:dis_price,:category_id)
	  end
end
