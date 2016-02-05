
class ConcertsController < ApplicationController
	def index
		@concerts = Concert.where('date BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day)
		#where("date >= ? AND <= ?", Date.today.beginning_of_day, Date.today.end_of_day)
		@concerts_this_month = Concert.where('date BETWEEN ? AND ?', DateTime.now.beginning_of_month, DateTime.now.end_of_month)
	end	
	def show
		@concert=Concert.find(params[:id])
		@comments=@concert.comments
		
	end	

	def new
    @concert = Concert.new

      
  end

	def create
		@concert = Concert.new concert_params  
		if @concert.save

			flash[:notice] = "Concert succesfully created"
			render 'new'
			
			 
		else
			flash[:alert] = "Concert not created"
			render 'new'
		end		
	end




	private
		def concert_params
			params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
		end	
end
