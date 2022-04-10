a = 7

# define method my_value that has a parameter called b - acts as a placeholder for arguments passed into the method call
def my_value(b)
  b = a + a
end

my_value(a)
puts a

# this code would raise an error message
# *NameError - undefined local variable or method a for main:Object
# Inside the method definition on line 5 the local method variable b is reassigned to a variable or method a that has not been initialized inside the method. Method definitions have their own inner scope and cannot access outer scoped variables.
