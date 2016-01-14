# class Car

# 	def initialize(sound,paint) #podria posar mes variables, pero llavors al crear una instancia nova em caldria especificar TOTES les variables. Si alguna és "per defecte" (per exemple la pintura) posaria paint="white")
# 		puts "Sound: #{sound} Paint #{paint}"

# 	end

# 	def make_sound 

	

# end



# seat=Car.new("broooom","red")
# ferrari=Car.new("BROOOOM","green")




#quan poses la @ significa que no es només un variable del metode, significa que la podrem cridar des de fora.


#ARA FEM EL CAS EN EL QUE LI ENCHUFAREM EL VALOR DELA VARIABLE DES DE FORA

# class Car

# 	def initialize(sound)
# 		@sound=sound#ho poso per poder-la cridar des de sota, el seguent def


# 	end

# 	def make_sound
# 		puts @sound #per accedir-hi crido a la instance variable, no a la original
	#end

	

# end



# seat=Car.new("broooom")
# ferrari=Car.new("BROOOOM")

# seat.make_sound
# ferrari.make_sound



#####SELF CLASSES

# class Car

# 	def initialize(sound)
# 		@sound=sound


# 	end
# 	def make_sound
# 		puts @sound 
# 	end

# 	def self.sound_twice(supercar) 
# 		2.times {supercar.make_sound} #des daquest calss method estic cridant a un instance method. El 2 tiems i els corchetes es fa servir per repeteir per 2.
# 	end
# end

# seat=Car.new("broooom")
# Car.sound_twice(seat)


##### EXERCICI AFEGIR CIUTATS

# class Car

# 	def initialize(sound)
# 		@sound=sound
# 		@cities=[]  #creem un array
		

# 	end
# 	def make_sound
# 		puts @sound 
# 	end

# 	def self.sound_twice(supercar) 
# 		2.times {supercar.make_sound} #des daquest calss method estic cridant a un instance method. El 2 tiems i els corchetes es fa servir per repeteir per 2.
# 	end

# 	def add_city(city)
# 		@cities.push(city)
# 	end	
# 	def visited
# 		puts @cities
# 	end	
# end

# seat=Car.new("broooom")


# seat.add_city("Barcelona")
# seat.add_city("Montpellier")
# seat.visited

#QUE FARIEM SI VOLGUESSIM AFEGIR 3 CIUTATS A LA VEGADA???

# class Car

# 	def initialize(sound)
# 		@sound=sound
# 		@cities=[]  #creem un array
		

# 	end
# 	def make_sound
# 		puts @sound 
# 	end

# 	def self.sound_twice(supercar) 
# 		2.times {supercar.make_sound} 
# 	end

# 	def add_city(city)
# 		if city.kind_of?(Array) == true #fem un condicional, preguntem si es array i si ho és fem un each per fer push un per un.
# 			city.each {|single_city|
# 				@cities.push(single_city)}
# 		else
# 			@cities.push(city)		
# 		end
		
# 	end	
# 	def visited
# 		puts @cities
# 	end	
# end

# seat=Car.new("broooom")
# seat.add_city(["Barcelona","Montpellier", "Madrid"])
# seat.visited

# #imprimir en un arxiu extern
class Car

	def initialize(sound)
		@sound=sound
		@cities=[]  #creem un array
		

	end
	def make_sound
		puts @sound 
	end

	def self.sound_twice(supercar) 
		2.times {supercar.make_sound} 
	end

	def add_city(city)
		if city.kind_of?(Array) == true 
			city.each {|single_city|
				@cities.push(single_city)}
		else
			@cities.push(city)		
		end
		
	end	
	def visited
		puts @cities
	end	
	def create_file
		IO.write("#{self.object_id}.txt",@cities_visited)


	end	
end

seat=Car.new("broooom")
seat.add_city(["Barcelona","Montpellier", "Madrid"])
# seat.create_file

# #INHERITANCE
# class Car

# 	def initialize(sound)
# 		@sound=sound
# 		@cities=[]  #creem un array
		

# 	end
# 	def make_sound
# 		puts @sound 
# 	end

# 	def self.sound_twice(supercar) 
# 		2.times {supercar.make_sound} 
# 	end

# 	def add_city(city)
# 		if city.kind_of?(Array) == true 
# 			city.each {|single_city|
# 				@cities.push(single_city)}
# 		else
# 			@cities.push(city)		
# 		end
		
# 	end	
# 	def visited
# 		puts @cities
# 	end	
# 	def create_file
# 		IO.write("#{self.object_id}.txt",@cities_visited)


# 	end	
# end

# class Racing_car < Car
# 	def make_sound
# 		puts "BBBBBBRRRRRRRRRROOOOOMMMMMM"
# 	end	
# end	

# seat=Car.new("broooom")

# lotus=Racing_car.new("ppp")
# lotus.make_sound



# attr_reader => fa que les altres classes puguin llegir la variable

# attr_writer => permet escriure

# attr_accessor => permet llegir i escriure



#EXERCICI CREAR CLASS PERSON

# class Person
# 	def initialize (name,age)
# 		@name=name
# 		@age=age

# 	end	
# end	

# a_person=Person.new ("Bob", 29)

#puts a_person.name #no funciuonarà pq estem cridant ala variable des de FORA de la class.

#Farem el següent:

class Person
	attr_reader :name
	def initialize (name,age)
		@name=name
		@age=age

	end	
end	

a_person = Person.new("Bob",29)
puts a_person.name



