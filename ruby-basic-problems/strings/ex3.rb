# Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

name = 'Roger'

# will print true - case insensitive since converted both strings to lowercase letters

puts name.downcase == 'RoGeR'.downcase # true

# if(name.downcase == 'RoGeR'.downcase)
#   puts true
# else
#   puts false
# end

if(name.downcase == 'DAVE'.downcase)
  puts true
else
  puts false
end

# String.casecmp - ignores the case of each character when both compared strings are equal will return 0
puts name.casecmp('RoGeR') == 0 # true
puts name.casecmp('DAVE') == 0 # false, will return -1 since not equal
