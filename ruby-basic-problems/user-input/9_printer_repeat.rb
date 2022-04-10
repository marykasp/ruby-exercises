
loop do
  input_string = nil
  lines = nil

  loop do
    puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit)"
    input_string = gets.chomp.downcase

    break if input_string.to_i >= 3 || input_string == 'q'

    puts ">> That's not enough lines!"
  end
  break if input_string == 'q'

  lines = input_string.to_i
  lines.times do
    puts "Launch School is the best"
  end
end

puts "End of program! Goodbye!"

# need to have a nested loop
# Outer loop will continue to run and the number of lines changes based on the inner loop
# if the user wants to quit need to use that user input to break out of the inner loop and then break out of the outer loop before the times method is run

# loop do
#   lines = nil
#   loop do
#     puts ">> How many output lines? Enter a number >= 3: "
#     lines = gets.chomp.to_i
#     break if lines >= 3
#     puts "Please enter more lines"
#   end

#   lines.times do
#     puts "Launch School is the best"
#   end

#   puts ">> Would you like to continue? Press q to exit"
#   input = gets.chomp.downcase
#   break if input == 'q'
# end
