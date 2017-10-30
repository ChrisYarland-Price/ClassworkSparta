my_age = 24.3
my_name = 'Chris'
my_other_name = 'Price'
my_full_name = "#{my_name} #{my_other_name}"
puts "My name is" + my_name + "my age is " + my_age.floor.to_s
puts "My name is #{my_full_name} #{my_age.floor}"
puts my_full_name
array = [1,2,3,'Matt', :ollie]

puts array.last
puts array.pop

my_hash = {
	name: 'ollie',
	age: 24,
	mood: "delightful"
}

puts my_hash[:mood]