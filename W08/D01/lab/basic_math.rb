require_relative "debug"

class BasicMath 
	include Debug
	
	attr_accessor :number
	

	def square(number)
		number**2
	end

	def cube(number)
		number**3
	end

	def root(number)
		Math.sqrt(number)
	end
	
	
end

number = BasicMath.new
puts number.list_methods(number)
puts number.list_attributes(number)
puts number.count_methods(number)
puts number.count_attributes(number)