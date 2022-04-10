# what will the code print and why?

# variable initialization and assignment to integer object
a = 7

# method definition, has access to outer scoped variables if passed in as a reference
def my_value(b)
  b += 10
end

# method is called and passed a reference to the integer object that local variable a references
my_value(a)

puts a

# inside the method definition, the method parameter, method scoped variable is reassigned to a new integer object in memory, no longer references the same integer object as outer local variable a, is bound to a new integer object with value 10
# therefore puts a will output to the screen 7 and return nil since local variable a still is bound to integer object 7

# * reassignment including assigment operators do not mutate the variable, instead it binds the variable to a new object.
# * Numbers in ruby are immutable
