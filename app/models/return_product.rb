class ReturnProduct

	def init 
		@id = 0
		@name = "none"
		@price = 398
		@category_id = 298
	end

	def set_data (product)
		@id = product.id
		@name = product.name
		@price = product.price
		@category_id = product.category_id
	end

end
