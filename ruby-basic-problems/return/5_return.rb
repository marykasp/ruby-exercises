def meal
  'Dinner'
  puts 'Dinner'
end

p meal
# Dinner
# nil

# this will output the raw object form of the meal method's return value which is 'nil'.
# The last line of the method is a call to the puts method which outputs its argument 'Dinner' and returns nil. So 'nil' is returned from the meal method and passed as an argument to the p method call.
