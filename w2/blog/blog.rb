class Post
	attr_reader :title, :date, :text, :sponsored
	def initialize
		@title=nil
		@date=nil
		@text=nil
	end
	def title(title)
		@title=title
	end
	def date(date)
		@date=date
	end
	def text(text)
		@text=text
	end			
end





class Blog
	def initialize
		@total_posts=[]
		@actual_page=1
	end
	
	def add_post(post)


		@total_posts.push(post)


	end

	# def publish_front_page
	# 	@ordered_posts=[]
	
	# 	ordered_posts=@total_posts.sort_by {|m| m.date}
	# 	ordered_posts.each do |publicar|
	# 		if publicar.sponsored == "no"
	# 		puts publicar.title
	# 		puts "***************************"
	# 		puts publicar.text
	# 		puts "---------------------------"
	# 	elsif publicar.sponsored == "si"
	# 		puts "*****#{publicar.title}*******"
	# 		puts "****************"
	# 		puts publicar.text
	# 		puts "---------------------------"
	# 	end

				
	# 	end	

	# end

	def pagination
		system("clear")

		@ordered_posts=[]
		
		ordered_posts=@total_posts.sort_by {|m| m.date}
		@number_of_starting_post=(@actual_page-1)*3+1
		
		ordered_posts[(@number_of_starting_post)..(@number_of_starting_post+2)].each do |publicar|
				if publicar.sponsored == "no"
			puts publicar.title
			puts "***************************"
			puts publicar.text
			puts "---------------------------"
			elsif publicar.sponsored == "si"
			puts "*****#{publicar.title}*******"
			puts "****************"
			puts publicar.text
			puts "---------------------------"
			end
		end
		puts "> next or previous?"
		answer=gets.chomp

		if answer == "next"
			
			@actual_page=@actual_page+1
		else 
			
			@actual_page=@actual_page-1
			
		end

		
		pagination()
		#blog.pagination
		



		

		

		
		
		# ordered_posts.each do |publicar|
		# 	if publicar.sponsored == "no"
		# 	puts publicar.title
		# 	puts "***************************"
		# 	puts publicar.text
		# 	puts "---------------------------"
		# elsif publicar.sponsored == "si"
		# 	puts "*****#{publicar.title}*******"
		# 	puts "****************"
		# 	puts publicar.text
		# 	puts "---------------------------"
		# end

				
		# end	

	end


	# pag 1---> post [1]--->[1+2]
	# pag 2----> post [4]---->[4+2]
	# pag 3----> post [6]---->[6+2]
	# pag 4----> post [10]---->[10+2]



# 1-Saber el numero de post
# 2-mirar el % de 3 para saber cuantas paginas habrá
# 2-Crear pagina select los tres primeros del ordered_post
# 2-Si length-3<0 parar





	


end			


post5=Post.new
post3=Post.new
post1=Post.new
post2=Post.new
post4=Post.new
post6=Post.new
post7=Post.new
post8=Post.new

post5.title("titulo 5")
post5.time(Time.new)
post5.text("tesvsdcvsdc")

blog=Blog.new
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.add_post(post4)
blog.add_post(post6)
blog.add_post(post5)
blog.add_post(post7)
blog.add_post(post8)



blog.pagination



