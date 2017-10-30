require_relative '../animal'
require_relative '../animal_types/mammals'
# Our dog class/template will inherit from animal and be affected by animal types
class Dog < Animal
  include Mammals

  def bark 
    puts 'i is a yappy poodle.'
  end
  
end

beagle = Dog.new

beagle.feed_young