
require 'imdb'
require 'pry'


final_output={}
class Search_imdb
	attr_accessor :array_of_posters, :search_string_array, :only_posters
	def initialize

		@search_string_array=search_string_array
		@search_string_array=[]

		

		
	end 

	def search(string_to_search)
		
		@string_to_search=string_to_search
		@movies_object = Imdb::Search.new(@string_to_search) AQUI
		
		# @movies_object=<Imdb::Search:0x007f87b430b108 @query="star trek">
		
		display_15
		
		# first_movie=search_title_array.movies[0]
		# final_movie_title=first_movie.title
		# final_movie_rating=first_movie.rating

		
		# final_output[final_movie_title.to_sym] = final_movie_rating
		# puts final_output[:Star_Trek]
	end
	def display_15
		@movies_object.movies[0..14].each do |movie|
			@search_string_array << movie
		end
		# @search_string_array
		
		display_posters	
	end	
	def display_posters
		@array_of_posters=array_of_posters
		@array_of_posters=[]

		# @search_string_array.each do |posters|
		# 	@array_of_posters<<[posters.id,Imdb::Movie.new(posters.id).poster]
		# end AQUI
		@array_of_posters=[["0796366",
  "http://ia.media-imdb.com/images/M/MV5BMjE5NDQ5OTE4Ml5BMl5BanBnXkFtZTcwOTE3NDIzMw@@.jpg"],
 ["0060028",
  "http://ia.media-imdb.com/images/M/MV5BMTY5MTIxNjkxOF5BMl5BanBnXkFtZTYwNTkyOTE2.jpg"],
 ["0079945",
  "http://ia.media-imdb.com/images/M/MV5BNzE4MTY1MTMyN15BMl5BanBnXkFtZTcwMzk5MzI4OA@@.jpg"],
 ["2660888",
  "http://ia.media-imdb.com/images/M/MV5BMTYzMjA4MTE4OF5BMl5BanBnXkFtZTgwNTI3Mjg0NzE@.jpg"],
 ["1408101",
  "http://ia.media-imdb.com/images/M/MV5BMTk2NzczOTgxNF5BMl5BanBnXkFtZTcwODQ5ODczOQ@@.jpg"],
 ["0092455",
  "http://ia.media-imdb.com/images/M/MV5BMTgyMjY5NTg2NV5BMl5BanBnXkFtZTgwMTAzMDczMDE@.jpg"],
 ["4756228", nil],
 ["0112178",
  "http://ia.media-imdb.com/images/M/MV5BNjY2MTE2MzcwN15BMl5BanBnXkFtZTgwOTA3MzgwMzE@.jpg"],
 ["0244365",
  "http://ia.media-imdb.com/images/M/MV5BMTI3MDE0NDQyMV5BMl5BanBnXkFtZTYwNTIzOTc4.jpg"],
 ["2621446",
  "http://ia.media-imdb.com/images/M/MV5BMjEzMTY4NTgyNF5BMl5BanBnXkFtZTgwMDc2OTg5NjE@.jpg"],
 ["0253754",
  "http://ia.media-imdb.com/images/M/MV5BMjAxNjY2NDY3NF5BMl5BanBnXkFtZTcwMjA0MTEzMw@@.jpg"],
 ["0111280",
  "http://ia.media-imdb.com/images/M/MV5BOTMyODkyODk1MV5BMl5BanBnXkFtZTcwNjk5MzI4OA@@.jpg"],
 ["0106145",
  "http://ia.media-imdb.com/images/M/MV5BMTc1ODcwNTg5NV5BMl5BanBnXkFtZTgwNjQwMjkxMDE@.jpg"],
 ["2191526",
  "http://ia.media-imdb.com/images/M/MV5BMTc2OTI1MzMyNF5BMl5BanBnXkFtZTgwODM1ODY4MDE@.jpg"],
 ["2732442",
  "http://ia.media-imdb.com/images/M/MV5BNTMyNjc1MjA0N15BMl5BanBnXkFtZTgwNjMzOTIyMjE@.jpg"]]

		
	
		clean_no_poster	
	end
	def clean_no_poster
		@only_posters=[]
		@array_of_posters.each {|item|
			if item[1]!=nil && @only_posters.length<9
			@only_posters<<item
			end}		
		@only_posters	
	end
end		

# system("clear")
# movie1=Search_imdb.new 
# movie1.search("love")


