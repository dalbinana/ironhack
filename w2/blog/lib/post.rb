class Post
	attr_accessor :title, :date, :text
	def initialize (title,date,text)
		@title=title
		@date=date.strftime("%H:%M:%S")
		@text=text
	end
end	

