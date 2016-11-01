module Api
	class ProductsController < ApplicationController
		protect_from_forgery :except => [:show]

		def index
			@products = Product.all
			render json: @products
		end

		def show
			# binding.pry
			prod = Product.find(params[:pid])
			retp = ReturnProduct.new
			retp.init
			retp.set_data( prod )
			render text: retp.to_json
		end
			
	end
end