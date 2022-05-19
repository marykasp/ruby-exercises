# Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.

first_name = 'John'
last_name = 'Doe'

# returns a new string
full_name = "#{first_name} #{last_name}"

# can also use append which will modify the object on the left side - String#<< mutates the caller (which is the string on the left of the append method)
first_name << last_name
puts first_name

puts full_name
