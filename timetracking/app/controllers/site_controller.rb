class SiteController < ApplicationController
	def home
		render 'home' #en realitat no caldria el render pq es diuen igual q la view
	end	
end
class ContactForm < ApplicationController
	def contact_form
		render 'contact_form'
	end	
end