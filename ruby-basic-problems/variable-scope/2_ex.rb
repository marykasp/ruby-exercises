a = 7

# method definition - self contained scope
def my_value(a)
  a += 10 # local variable a is reassigned
end

my_value(a)
puts a

# will output 7 to the screen

# The method scoped variable a, method parameter, is reassigned to a new integer object, bound to a new object in memory. This method scoped a variable is not the same a variable that is in the outer scope.
# * method definitions are self contained with respect to local variables. Local variables outside the method are not visible inside the method, so the top level a variable is not available inside my_value method.
