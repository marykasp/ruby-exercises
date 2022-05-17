number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# the variable number is assigned the integer object with value 7, this never changes, since 7 evaluates to true the if clause will always be true and the code in the if clause will be executed - inside the if clause the puts method is called and is passed a string interpolation as its argumment - outputs My favorite number is 7 and returns nil.

# only false and nil evaluate as false in Ruby
