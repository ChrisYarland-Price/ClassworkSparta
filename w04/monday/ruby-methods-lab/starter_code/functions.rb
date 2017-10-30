# Write a function that multiplies two numbers and returns the result
# multiply
def multiply(x, y)
	x * y
end

# Write a function that multiplies three numbers and returns the result
# add_three
def add_three a, b, c
	a + b + c
end

# Write a function that returns the smaller of 2 numbers
# smallest_number

def smallest_number x, y
	[x, y].min
end

# Write a function that returns the largest of 3 numbers
# max_of_three
def max_of_three a, b, c
	[a, b, c].max
end

# Write a function that returns the reverse a string 
# reverse_string
def reverse_string x
	x.reverse
end

# write a function that returns the year of birth from an age
# disemvowel
def disemvowel str
	str.gsub(/[aeiou]/i, '')
end

# write a fucntion that removes all ODD number from an array
# remove_odd
def remove_odd arr
	arr.delete_if &:odd?
end

# write a fucntion that removes all EVEN number from an array
# remove_even
def remove_even arr
	arr.delete_if &:even?
end

# write a function that takes an array of strings and returns the string with the longest char langth
# longest_string
def longest_string arr
	arr.max_by(&:length)
end

# discard the first 3 elements of an array, 
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3 str
	str.drop(3)
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash a
	# h = Hash[a.each_slice(2).to_a]
	a.each_slice(2).to_h

end

# Write a functino that takes any number and returns a value based on these rules 

# But for multiples of three print "Fizz" instead of the number 
# For the multiples of five print "Buzz". 
# For numbers which are multiples of both three and five print "FizzBuzz".

def fizz_buzz number 
	if number % 3 === 0 && number % 5 === 0 
		return "FizzBuzz"
	elsif number % 3 === 0
		return "Fizz"
	elsif number % 5 === 0
		return "Buzz"
	else
		return number
	end
end
