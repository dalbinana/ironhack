class Blog
	attr_accessor :total_posts
	def initialize
		@total_posts=[]
		@actual_page=1
	end
	
	def add_post(post)
		@total_posts.push(post)
	end

	def posts
		@total_posts
	end	

	def latest_post
		@total_posts.sort_by {|post| post.date}.reverse
			

	end	
	# def pagination
	# 	system("clear")
	# 	@ordered_posts=[]
	# 	ordered_posts=@total_posts.sort_by {|m| m.date}
	# 	@number_of_starting_post=(@actual_page-1)*3+1
	# 	ordered_posts[(@number_of_starting_post)..(@number_of_starting_post+2)].each do |publicar|
	# 			if publicar.sponsored == "no"
	# 		puts publicar.title
	# 		puts "***************************"
	# 		puts publicar.text
	# 		puts "---------------------------"
	# 		elsif publicar.sponsored == "si"
	# 		puts "*****#{publicar.title}*******"
	# 		puts "****************"
	# 		puts publicar.text
	# 		puts "---------------------------"
	# 		end
	# 	end
	# 	puts "> next or previous?"
	# 	answer=gets.chomp
	# 	if answer == "next"
	# 		@actual_page=@actual_page+1
	# 	else 
	# 		@actual_page=@actual_page-1
	# 	end

		
	# 	pagination()

	# end
end			






# blog.pagination



