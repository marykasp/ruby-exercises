5.times do |index|
  puts index
  break if index == 2
end

# times method counts from 0 to one less than the specified number. the block's paramter index represents the current iteration number. Can print the number with a call to puts that is passed the index as its argument
# stop the loop by adding break statement - if condition that checks if the current number equals 2. 2 will still be printed to the screen since puts index comes before the conditional break statement.

5.times do |index|
  puts index
  break if index == 4
end

# 0, 1, 2, 3, 4 will be printed (5 values)

5.times do |index|
  puts index
  break if index < 7
end

# 0 - just one value since index 0 is less than 7 so the loop will stop iterating
