loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end

# inside the loop a random integer is being assigned to the local scoped numbers variable upon each iteration.
# The loop will be exited out of if number is equal to or between 0 and 10.
# * between? method takes two arguments and returns a boolean object - if the caller's value is between the two integers provided.
