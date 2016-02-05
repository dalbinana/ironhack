class Link < ActiveRecord::Base
	def self.display_long_url(short_link)
		find_by(new_url: short_link).original_url
	end
	def self.translate_the_number(number_link)
		number_characters=number_link.to_s.size
		charset = Array('A'..'Z') + Array('a'..'z')
		Array.new(number) { charset.sample }.join
		end 
		



end
