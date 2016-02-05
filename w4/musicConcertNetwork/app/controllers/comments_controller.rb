class CommentsController < ApplicationController
	 def index
    @concert = Concert.find params[:concert_id]
   	@comments = @concert.comments
   	
   
  end
end
