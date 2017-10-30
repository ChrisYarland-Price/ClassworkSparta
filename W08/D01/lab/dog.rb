require_relative "debug"

class Dog
	include Debug

	#attr_accessor :fluffiness :dog_name :dog_years

	def initialize(fluffiness, dog_name, dog_years)

		@fluffiness = fluffiness
		@dog_name = dog_name
		@dog_years = dog_years
		
	end
	
	def cuddle
		puts "you touch the floof, you love the floof"
	end

	def walk
		puts "you do a pat pat pat on the street"
		
	end

	def escape
		puts "dog gone lol, Martha can't say this"
		
	end
end

dog1 = Dog.new(9, "Artemis", 40)
puts dog1.list_methods(dog1)
puts dog1.list_attributes(dog1)
puts dog1.count_methods(dog1)
puts dog1.count_attributes(dog1)