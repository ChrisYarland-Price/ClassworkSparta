# This is the Mammals module that should be included for all mammals
module Mammals

  def commun_mammal_traits
    puts 'mammals are warm blooded and have nipples.'
  end

  class Common

    def feed_young
      puts 'feeding young'
    end

  end

  class Biped < Common
    attr_accessor :number_of_legs

    def initialize(number_of_legs)
      self.number_of_legs = number_of_legs
    end

    def legs
      puts "I have two legs #{self.number_of_legs} legs." 
    end
  end 

  class Quadruped < Common
    attr_accessor :number_of_legs

    def initialize(number_of_legs)
      self.number_of_legs = number_of_legs
    end

    def legs
      puts "I have #{self.number_of_legs} legs."
      
    end
    
    
  end

end
