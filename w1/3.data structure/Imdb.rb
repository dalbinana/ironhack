
require 'imdb'
require 'pry'


final_output={}
class Search_imdb
	def initialize
		search_string_array=[]
		binding.pry
	end 

	def search (string_to_search)
		puts "search"
		@string_to_search=string_to_search
		search_string_array = Imdb::Search.new(@string_to_search)
		binding.pry
		# first_movie=search_title_array.movies[0]
		# final_movie_title=first_movie.title
		# final_movie_rating=first_movie.rating

		
		# final_output[final_movie_title.to_sym] = final_movie_rating
		# puts final_output[:Star_Trek]


	end
end		

movie1=Search_imdb.new 
movie1.search("Torrente")
puts "hola"

