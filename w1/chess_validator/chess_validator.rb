require "pry"
class Movement 
	attr_accessor :gameboard
	def initialize(initialpositiontxt,finalpositiontxt,gameboard)
		@initialpositiontxt=initialpositiontxt
		@finalpositiontxt=finalpositiontxt
		@gameboard=gameboard
		# binding.pry
		@initial=Translator.translate(initialpositiontxt)
		@final=Translator.translate(finalpositiontxt)
		check_board
	end	
	def check_board
		initial_column_letter=@initial[1]
		initial_row_number=@initial[0]
		final_column_letter=@final[1]
		final_row_number=@final[0]
		kind_of_piece=@gameboard [initial_row_number][initial_column_letter]
		print initial_column_letter
		puts initial_row_number
		print final_column_letter
		puts final_row_number
		
		puts kind_of_piece
	
		
		case kind_of_piece
		when "bR", "wR"
			# binding.pry	
			Rook.new(initial_column_letter,initial_row_number,final_column_letter,final_row_number)
		when "bP", "wP"
			Paw.new(initial_column_letter,initial_row_number,final_column_letter,final_row_number,kind_of_piece)
		when "wB", "bB"
			# binding.pry

			Bishop.new(initial_column_letter,initial_row_number,final_column_letter,final_row_number)
		when "wN", "bN"
			Knight.new(initial_column_letter,initial_row_number,final_column_letter,final_row_number)
		else
			puts "I don't recognise the piece"	

		end
	end
end	

class Translator
	def self.translate(positiontxt) #input a2 output 06
		
		trans_array=[]
		y_index=positiontxt.split("")[1] 
		x_index=positiontxt.split("")[0]
		# binding.pry
		case x_index
			when "a"
			x_normalized=0
			when "b"
			x_normalized=1	
			when "c"
			x_normalized=2	
			when "d"
			x_normalized=3	
			when "e"
			x_normalized=4	
			when "f"
			x_normalized=5	
			when "g"
			x_normalized=6	
			when "h"
			x_normalized=7
		end	
		case y_index
			when "1"
			y_normalized=7
			when "2"
			y_normalized=6	
			when "3"
			y_normalized=5	
			when "4"
			y_normalized=4	
			when "5"
			y_normalized=3	
			when "6"
			y_normalized=2	
			when "7"
			y_normalized=1	
			when "8"
			y_normalized=0
		end
		@trans_array = [x_normalized,y_normalized]	
			# binding.pry
	end
	
end	
class Bishop
	def initialize (initial_column_letter,initial_row_number,final_column_letter,final_row_number)
		# binding.pry
		puts "Bishop"
		if (final_column_letter - initial_column_letter).abs == (final_row_number - initial_row_number).abs
			puts "LEGAL"
		else
			puts "ILEGAL"	
		end

	end	
end		
class Rook
	def initialize (initial_column_letter,initial_row_number,final_column_letter,final_row_number)
		puts "rook"
		if final_column_letter == initial_column_letter || final_row_number == initial_row_number
			puts "LEGAL"
		else
			puts "ILEGAL"	
		end
	end
end	
class Paw
	
	def	initialize (initial_column_letter,initial_row_number,final_column_letter,final_row_number,kind_of_piece)
		puts "peon"
			
		case kind_of_piece
			when "bP"
				if final_column_letter - initial_column_letter <= 2 && final_row_number == initial_row_number && final_column_letter- initial_column_letter  > 0
					 puts "LEGAL"
				else
					puts "ILEGAL"
				end	
			end
		case kind_of_piece
			when "wP"
				if initial_column_letter-final_column_letter >= 2  && initial_row_number == final_row_number && final_column_letter - initial_column_letter < 0
					 puts "LEGAL wp"
				else
					puts "ILEGAL wp"
				end
			end		
		end
	end
class Knight
	
	def initialize (initial_column_letter,initial_row_number,final_column_letter,final_row_number)
	puts "knight"
	# binding.pry	
		if initial_column_letter-final_column_letter==2 && initial_row_number-final_row_number==1  
			puts "LEGAL"
		elsif 	initial_column_letter-final_column_letter== -2 && initial_row_number-final_row_number== -1
			puts "LEGAL"
		end	

	end
end		

system("clear")
gameboard=[
		['bR', 'bN', 'bB', 'bQ', 'bK', 'bB', 'bN', 'bR'],
		['bP', 'bP', 'bP', 'bP', 'bP', 'bP', 'bP', 'bP'],
		['--', '--', '--', '--', '--', '--', '--', '--'],
		['--', '--', '--', '--', '--', '--', '--', '--'],
		['--', '--', '--', '--', '--', '--', '--', '--'],
		['--', '--', '--', '--', '--', '--', '--', '--'],
		['wP', 'wP', 'wP', 'wP', 'wP', 'wP', 'wP', 'wP'],
		['wR', 'wN', 'wB', 'wQ', 'wK', 'wB', 'wN', 'wR']
		]
# File.open("simple_moves.txt", "r").each_line do |line|
#   data = line.split(/\t/)
#   columns, letters = data.map{|d| d.split(": ")[1] }.flatten
# end

#####OPEN FILE AND MOUNT AN ARRAY WITH THE MOVEMENTS######
# movimientos=[]
# movimientos = IO.readlines('simple_moves.txt')


# # File.open("simple_moves.txt", "r").each_line do |line|
  
# #   data = line.split(/\t/)
# #   column, line = data.map{|d| d.split(": ")[1] }.flatten
# #   movimientos << data
# # end

# print movimientos
##########################################################

mov1=Movement.new("b2","b3",gameboard)