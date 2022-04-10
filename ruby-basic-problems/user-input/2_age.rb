puts "What's your age in years?"
# gets method returns a string object, need to convert string to number
age = gets.chomp.to_i

# string interpolation - the arithmetic operation is evaluated and the return value is inserted into the string
puts "You are #{age * 12} months old"
