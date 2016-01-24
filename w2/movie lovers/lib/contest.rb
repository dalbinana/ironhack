require "pry"
class Contest
	attr_accessor :array_of_only_years, :array_of_years_posters
	def initialize (movies_to_contest)
		@movies_to_contest=movies_to_contest
		extract_ids_years	
	end
	def extract_ids_years

		@array_of_years_posters=[]
		
		# @movies_to_contest.each do |item|
		# 	array_of_years_posters<<[item[1],Imdb::Movie.new(item[0]).year]
		# end AQUI
		
		array_of_years_posters=[["http://ia.media-imdb.com/images/M/MV5BMjE5NDQ5OTE4Ml5BMl5BanBnXkFtZTcwOTE3NDIzMw@@.jpg",
  2009],
 ["http://ia.media-imdb.com/images/M/MV5BMTY5MTIxNjkxOF5BMl5BanBnXkFtZTYwNTkyOTE2.jpg", 1966],
 ["http://ia.media-imdb.com/images/M/MV5BNzE4MTY1MTMyN15BMl5BanBnXkFtZTcwMzk5MzI4OA@@.jpg",
  1979],
 ["http://ia.media-imdb.com/images/M/MV5BMTYzMjA4MTE4OF5BMl5BanBnXkFtZTgwNTI3Mjg0NzE@.jpg",
  2016],
 ["http://ia.media-imdb.com/images/M/MV5BMTk2NzczOTgxNF5BMl5BanBnXkFtZTcwODQ5ODczOQ@@.jpg",
  2013],
 ["http://ia.media-imdb.com/images/M/MV5BMTgyMjY5NTg2NV5BMl5BanBnXkFtZTgwMTAzMDczMDE@.jpg",
  1987],
 ["http://ia.media-imdb.com/images/M/MV5BNjY2MTE2MzcwN15BMl5BanBnXkFtZTgwOTA3MzgwMzE@.jpg",
  1995],
 ["http://ia.media-imdb.com/images/M/MV5BMTI3MDE0NDQyMV5BMl5BanBnXkFtZTYwNTIzOTc4.jpg", 2001],
 ["http://ia.media-imdb.com/images/M/MV5BMjEzMTY4NTgyNF5BMl5BanBnXkFtZTgwMDc2OTg5NjE@.jpg",
  2015]]

		return array_of_years_posters
	end
	
	def	pick_year_to_contest(array_of_posters_years)
		binding.pry
		@array_poster_year.each do |item|
			@array_of_only_years<<item[1]
		end
		@year_contest=@array_of_only_years.sample
	end
	
	

end	



