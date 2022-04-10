def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# Dinner will first be output to the screen since its the first line in the method and the method is called on line 6
# the return value of the meal method is the string object 'Breakfast', so on line 6 when the method call to meal is passed as an argument to the puts method 'Breakfast will be outputted to the screen.
