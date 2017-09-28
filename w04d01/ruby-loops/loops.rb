# This is a horrible simple loop
# loop { 
# 	puts "I live like this all the time."
#  }

 #While loop
 i = 0
 # k = 0
 j = 0
 while i < 10
 	puts i
 	i += 1
 end

 until j > 10
 	puts "Until: #{j}"
 	j += 1
 end

 for k in 1..5
 	puts "For Loop : #{k}"
 end

5.times { |n| puts "omg"  }
name = ["Chris", "Rob", "Dan", "Ellie"]
name.each { |e| puts e  }

# array enumerators
# Map
name.map { |e| puts e.reverse }
puts name
name.reverse_each { |e| puts e  }
# reduce
# puts name.reduce()
num = [1231,123,21,31,123,21,213123,213123,21341,123]
puts sum = num.reduce(:*)
# select
cool = name.select do |student|
	student.chars.first === "E"
end
puts cool





