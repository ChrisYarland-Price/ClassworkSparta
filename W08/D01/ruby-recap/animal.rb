# This is our Animal class which will inherit from living organism
require_relative './living_organism'

class Animal < LivingOrganism
  def self.traits
    puts 'Animals can breathe, eat, drink, speak, grow and procreate.'
  end
  def eat
    puts 'eating'
  end
  def breathe
    puts 'breathing'
  end
  def drink
    puts 'drinking'
  end
  def speak 
    puts 'speaking'
  end
  def grow
    puts 'growing'
  end
  def procreate
    puts 'bowchicabowwow'
  end
end

badger = Animal.new

badger.speak