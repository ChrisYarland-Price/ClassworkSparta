# return an array of reversed words
def reverse_array_of_strings words
	words.each { |e| e.reverse!  }
end

# return all the even numbers less than the given number
def even_numbers_less_than num
	# array_of_nums = []
	# i = 0
	# while i < num
	# 	array_of_nums.push(i)
	# 	# array_of_nums.delete_if &:odd?
	# 	i += 2
	# end
	# array_of_nums
	(0...num).select { |numbers| numbers.even? }
end

# return the average of all numbers in an array
def average numbers
	numbers.reduce(:+).to_f / numbers.length
	# total / numbers.length
end

