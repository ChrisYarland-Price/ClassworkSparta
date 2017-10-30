require_relative "debug"

class Car
	include Debug
	#attr_accessor :color :acceleration :seats

	def initialize(color, acceleration, seats)
		@color = color
		@acceleration = acceleration
		@seats = seats
	end
	
	def drive
		puts "Gotta go Fast!!!! I accelerate at a rate of #{@acceleration}"
		
	end

	def refuel
		puts "glug glug glug, you're money is all gone"
		
	end

	def break_into
		puts "dude, where's my car?"
		
	end
	
end




