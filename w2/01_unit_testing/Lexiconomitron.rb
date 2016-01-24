class Lexiconomitron
	def eat_t(phrase)
		phrase.delete "t"
	end
	def shazam(phrase_array)
    first_last_array = []
		phrase_array.map do |word|
			word.reverse!
		end
    first_last_array.push(phrase_array[0])
    first_last_array.push(phrase_array[-1]) 
		return first_last_array
	end	
end	
