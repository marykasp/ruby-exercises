answer = nil
loop do
  puts ">> Do you want me to print something? (y/n)"
  # convert answer to downcase
  answer = gets.chomp.downcase
  # break out of the loop if user answerd with y or n
  break if ['y', 'n'].include?(answer)
  puts ">> Invalid input! Please enter y or n"
end

puts 'something' if answer == 'y'
