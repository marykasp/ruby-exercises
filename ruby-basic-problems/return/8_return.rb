def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# the last line of the count_sheep method is the integer object 10, so that will be returned to where the method is called on line 8

# puts method will output the return value of the count_sheep method which is 10
# 0
# 1
# 2
# 3
# 4
# 10
