numbers = []

loop do
  puts "Enter any number:"
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end

puts numbers

# adding integer from user input to the array using the << shovel operator. Will add the integer to the end of the numbers array.
# Stop the loop by checking the size of the numbers array, once it contains 5 elements, the loop will be exited out of using the break keyword
