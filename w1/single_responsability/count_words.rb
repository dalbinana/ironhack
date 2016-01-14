class Password
	def initialize
		puts "Please enter your user"
		@user=gets.chomp
		puts "Please enter your password"
		@password=gets.chomp
		check_user_password
	end
	def check_user_password
		if @user=="dani" && @password=="1234"
			puts "please enter a text"
			@text=gets.chomp
		else 
			puts "wrong name/password. Please try again"
			Password
		end
		count_words
	end
	def count_words
		puts @text.split.size
	end
end
Password.new







