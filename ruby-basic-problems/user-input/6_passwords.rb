PASSWORD = "SecreT"

loop do
  puts ">> Please enter your password"
  answer = gets.chomp
  break if answer == PASSWORD
  puts "Invalid passord!"
end

puts "Welcome!"
