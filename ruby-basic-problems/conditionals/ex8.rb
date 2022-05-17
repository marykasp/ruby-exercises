status = ['awake', 'tired'].sample

# Write an if statement that returns "Be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement to a variable and print that variable.

result = if status == 'awake'
  "Be productive!"
else
 "Go to sleep!"
end

puts result

# So far, we've been using if statements to print strings directly within the clauses. In this exercise, we aren't printing the string immediately, instead, we're returning the string to be printed at a later time. We can do this quite easily by saving the return value of the if statement to a variable. The last line evaluated inside the clause that is executed is the value that is implicitly returned and stored in the result variable
