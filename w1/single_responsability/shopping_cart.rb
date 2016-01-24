require "pry"

class ShoppingCart
	#binding.pry

	def initialize
	
		@price_list = {
			:apples => 10,
			:oranges => 5,
			:grapes => 15,
			:banana => 20,
			:watermelon => 50
		}
		
		@total_price_cart=0
		#@user_cart={}
		@arr_user_cart=[]
			
		#binding.pry	
		
	end
	def add_item_to_cart(item)
		
		@price = @price_list[item.to_sym]
		#binding.pry

		#@user_cart[item.to_sym]=@price
		@arr_user_cart << item

		# puts @user_cart
		@total_price_cart = @total_price_cart + @price
		
		#binding.pry
	end
	def cost
		puts "El precio total es #{@total_price_cart}"
		#puts @user_cart
		
	end	
	def show
		
		
		count = @arr_user_cart.inject({}) do |counter, item|
		  counter[item] ||= 0
		  counter[item]  += 1
		  counter
		end






		count.each do |key, value|
		puts "#{value} #{key}"
		end



		# puts @user_cart
		# counts = @user_cart.values.inject(Hash.new(0)) do |collection, value|
		# 	collection[value] +=1
		# 	puts collection
		# end
		

	end	
		
end
system("clear")

cart=ShoppingCart.new
cart.add_item_to_cart("apples")
cart.add_item_to_cart("apples")
cart.add_item_to_cart("apples")
cart.add_item_to_cart("oranges")
cart.cost
cart.show
