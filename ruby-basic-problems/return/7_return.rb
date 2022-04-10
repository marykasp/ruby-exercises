def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# the times method is the last line in the count_sheep method, the times method returns the integer object it is called on. So will return 5.

# inside the times method the puts method is called as many times as there are loop iterations, so integers 0 through 4 will be output to the screen
# the method's return value is integer 5 which the puts method is passed as its argument and outputs the string representation 5 to the screen.
