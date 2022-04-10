loop do
  puts "What's does 2 + 2 equal?"
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct"
    break
  end
  puts "Wrong answer. Try again!"
end

# check the value of answer in the if condition. If answer equals 4 then that's correct is printed to the screen and the loop will break
