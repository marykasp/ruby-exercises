def tricky_number
  if true
    number = 1 # return object being assigned - so this function returns number object with value of 1 since the else clause is never executed
  else
    2
  end
end

puts tricky_number

# inside the tricky_number method definition there is an if/else statement which has a condition that always evaluates to true therefore the if clause will always be executed. In this case a local variable number is assigned to an integer object 1 on line 3. Assignments return the object that is being assigned so in this case the return value of the method will be 1
