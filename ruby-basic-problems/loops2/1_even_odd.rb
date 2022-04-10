count = 1

loop do
  puts count.odd? ? "#{count} is odd!" : "#{count} is even!"
  count += 1
  break if count > 5
end

# count adds 1 to itself upon each iteration
# break statement checks if the value count upon each iteration is greater than 5, will stop the loop if count is greater than 5
# ternary operator to print the different statements depending on whether the count number is even or odd
