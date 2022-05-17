number = rand(10)

# if number = 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

# Currently, "5 is a cool number!" is being printed every time the program is run. Fix the code so that "Other numbers are cool too!" gets a chance to be executed.

# The if clause is being executed every time because in the if condition it is actually a variable initialization that is reassigning the number variable to point to the interger object 5. Reassignments return the value of the variable which in this case is 5 so 5 evaluates as true
# instead need to use a connditional expression that evaluates to true or false by checking if the random number generated is equal to the value 5.
