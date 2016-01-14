require 'pry'

# class Room
# attr_accessor :room_array 
# 	def initialize (id,text,n,s,e,w)
		
# 		room_array=[]
# 		room_array.push(id,text,n,s,e,w)
		
# 		Dungeon.new(room_array)
# 		#binding.pry
# 	end


# end

# class Dungeon
# attr_accessor :dungeon_array	
# 	def initialize(room_array, dungeon_array = [])
		
# 		dungeon_array.push(room_array)


		
# 		Game.new(dungeon_array)
		
# 	end

# end		

# class Game
# 	def initialize(dungeon_array, actual_room=[])
		
# 		@dungeon_array=dungeon_array
# 		actual_room=1
# 		#puts dungeon_array[1][1]

# 	end

	
# end	
		




class Room
	attr_accessor :room_hash 
	def initialize
	@room_hash={
		:habit1 =>["text1",3,0,2,0],
		:habit2 =>["text2",4,0,1,0],
		:habit3 =>["text3",0,1,0,4],
		:habit4 =>["text4",5,3,3,0],
		:habit5 =>["text5",0,4,0,0]
	}
	end
	def add_room(id,text,n,s,e,w)
		@room_array.push(id,text,n,s,e,w)
	end
	def actual_room
		actual_room=1
		actual_room_str=":habit#{actual_room}"
		actual_room_sym=actual_room_str.to_sym
		puts actual_room_sym

		puts actual_room_sym.class
		puts @room_hash[actual_room_sym]

		#p @room_array.index(@room_array.detect{|aa| aa.include?(2)})

		
		
		
	end	
end

partida=Room.new
partida.actual_room

#room1=Room.add_room(1,"text1",3,0,2,0)
# room2=Room.new(2,"text2",4,0,1,0)
# room3=Room.new(3,"text3",0,1,0,4)
# room4=Room.new(4,"text4",5,3,3,0)
# room5=Room.new(5,"text5",0,4,0,0)



