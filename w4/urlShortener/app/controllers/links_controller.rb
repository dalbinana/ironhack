class LinksController < ApplicationController
	# def redirect
	# 	@url = Link.display_long_url params[:shortlink]
	# 	redirect_to @url
	# end	
	def translate
		@string_url = Link.translate_the_number
end
