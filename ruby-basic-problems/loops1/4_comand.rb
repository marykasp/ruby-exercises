loop do
  puts "Should I stop looping"
  answer = gets.chomp
  break if answer == 'yes'
  puts "Incorrect, answer 'yes' to stop looping"
end

# loops can be used to retrieve and handle user input. The loop continues iterating until the user enters 'yes'. Once the if condition following the break keyword evaluates to true, then break will be executed and the loop will end.
