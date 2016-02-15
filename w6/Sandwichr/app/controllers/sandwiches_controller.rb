class SandwichesController < ApplicationController
	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def index
		sandwiches = Sandwich.all
			render json: sandwiches
	end		


private

	def sandwich_params
		params.require(:sandwich)
			.permit(:name, :bread_type)	
	end			

end
