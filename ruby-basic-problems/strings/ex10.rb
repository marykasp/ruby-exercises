# Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange'

puts colors.include?('yellow') # true
puts colors.include?('purple') # false

# include? method checks if the string that it is called on contains the string it is passed as its argument - will return a boolean value
