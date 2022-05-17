sun = ['visible', 'hidden'].sample

# Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.
puts sun
# runs when the expression evaluates to falses
unless sun == 'visible'
  puts "The clouds are blocking the sun"
end

# unless statement is the opposite of the if statement- this states do something if the sun is hidden, so when does is not visible
