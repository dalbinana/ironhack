
require 'imdb'
require 'pry'

# i = Imdb::Search.new("Star Trek")
# puts i.movies.size

final_output={}
class Moviely 

	def initialize (movie_title)
		@movie_title=movie_title
		search_title_array = Imdb::Search.new(@movie_title)
#binding.pry
		first_movie=search_title_array.movies[0]
		final_movie_title=first_movie.title
		final_movie_rating=first_movie.rating

		
		final_output[final_movie_title.to_sym] = final_movie_rating
		puts final_output[:Star_Trek]


	end
end		

movie1=Moviely.new ("Star Trek")

