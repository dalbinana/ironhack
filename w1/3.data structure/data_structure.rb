# #####EXERCISI DELS COTXES###############

# #####NO FUNCIONA

#   class CarDealer
#   	def initialize(inventory)
#     	@inventory = inventory
#   	end

#   	def cars(brand)
#   		#a hash wants a symblo as a key, convert this string using .to_sym
#   		#to acces the elements in a ahsh you need to acces the elements as a symbol.

#   		@inventory[brand.to_sym].each { |model|}
#   		puts model
#   	end
#   end



# inventory = {
# 	:Ford => ["Fiesta","Mustang"],
# 	:Seat => ["Ibiza","Leaon"]

# }

# car_dealer = CarDealer.new(inventory)
# car_deaers.cars("Ford)


#####D'AQUESTA MANERA EN COMPTES DE FER FILLS, CRIDEM A UNA CLASSE (INICIALITZEM) DES D'UNA ALTRA. AIXÒ ES DIU CMPOSITION

# class Car
#   def start
#     Engine.new.move_pistons
#   end
# end
# class Engine
#   def move_pistons
# "Pshhhhh"
# end end


#####EXERCICI INJECCIO PAG 35######
###INJECTION#####



# class Car
# 	def initialize (engine)
# 		@engine=engine
	
# 	end	
# 	def start
# 		puts "Broooo"
# 		@engine.move_pistons
# 	end	
	
# end	

# class Engine 
# 	def initialize (sound)
# 		@sound=sound
# 	end	
# 	def move_pistons
		
# 		puts @sound
# 	end
# end

# class Electric_Engine
# 	def move_pistons
# 		puts "EEEEEELLL"
# 	end
# end




#  Car.new(Engine.new("ffds")).start #####al crear el car li dic la classe d'engine que tindrà

# ########EXERCICI PAG 41########

class Car
	attr_accessor :total_cars
	total_cars=[]
	def initialize (wheels,noise)
		
		@wheels=wheels
		@noise=noise
		@total_cars=total_cars
		@total_cars.push(self)
		puts total_cars
	end
end

car1=Car.new(4,"brrr")
car2=Car.new(3,"brrr")









