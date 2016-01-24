
class PasswordChecker
	def initialize(user,password)
		@user=user
		@password=password
	end	

	def check_password_longer?
		@password.size>7

	end
	def check_letter_symbols?
		@password.include? "z"
	end	
	
end		
