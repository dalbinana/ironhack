class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end
homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Andre's place", "Stuttgart", 3, 55),
  Home.new("Pique's place", "Barcelona", 4, 65),
  Home.new("Alves's place", "Barcelona", 5, 75),
  Home.new("Mascehrano's place", "Barcelona", 6, 85),
  Home.new("Alba's place", "Sao Paolo", 2, 95),
]
# homes.each do |hm|
#   puts "#{hm.name} in #{hm.city}"
#   puts "Price:$ #{hm.price} a night"
#   puts""
# end

# cities = homes.map do |hm|
#   hm.city
# end

# prices_avg = homes.map do |avg|
# 	avg.price
# end
# sum = 0
# prices_avg.each { |a| sum+=a }
# avg=sum/prices_avg.length
# #puts avg

# total_capacities = 0.0

# total_capacities = homes.reduce(0) do |sum, hm|
#   sum + hm.capacity
# end

# # puts "The average capacity is:"
# # puts total_capacities / homes.length               
# # homes.each_with_index do |hm, index|
# #   puts "Home Number #{index + 1}: #{hm.name}"
# # end

# sorted = homes.sort do |home1, home2|
#   # Compare the two homes by their capacity
#   home1.capacity <=> home2.capacity
# end

#  def array_printer(array)
#   array.each do | language |
#     puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
#   end
# end
 def imprint(item)
  item.each do |hm|
  puts "#{hm.name} in #{hm.city}"
  puts "Price:$ #{hm.price} a night"
  puts""
	end
end

# puts "by wich variable do you wat to sort?(price,capacity)"
# variable_sort=gets.chomp

# if variable_sort == "price"

# 	puts "Do you want to sort from high or low? (high/low)"
# 	order_method= gets.chomp

# 	if order_method=="high"
# 		sorted = homes.sort do |home1, home2|
# 	  	home1.price <=> home2.price
# 	  end

			
# 	elsif order_method=="low"
# 		sorted = homes.sort do |home1, home2|
# 	  	home2.price <=> home1.price
# 	  end
			
# 	else 
# 		puts "I don't get it"		
# 	end
# elsif variable_sort=="capacity"
# 	sorted = homes.sort do |home1, home2|
# 	  	home1.capacity <=> home2.capacity
# 	  end
# else 
# 		puts "I don't get it"	
# end


# imprint(sorted)

#####FILTER BY CITY

# puts "Please enter the city you want to filter by"
# city_to_filter=gets.chomp
# cities_ordered=homes.select do |home|
# 	home.city == city_to_filter
# end

# imprint(cities_ordered)

# #####ADD THE AVERAGE PRICE OF THE SELECTED CITY
# selected_avg_value = cities_ordered.reduce(0.0) do |preciomedio,pc|
# 	preciomedio + pc.price
# end
# puts "The average price of the houses in #{city_to_filter} is:"
# puts selected_avg_value / cities_ordered.length



####### NAME THE PRICE

# puts "Please enter the exact price you are willing to pay"
# exact_price=gets.chomp.to_i

# #puts exact_price.class

# home_exact_price = homes.find do |hm|
# 	hm.price <= exact_price
# end
# puts "The first home in your price is:"
# puts home_exact_price.name

require "pry"

fruits = ["apple", "orange", "pear"]
fruits.each {|fruit|
binding.pry	
puts fruit
}





				


