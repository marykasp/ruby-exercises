a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# * output "Xy-zy",
# a reference to the string object "Xyzzy" referenced by the local variable a is passed in as an argument to the my_value method call. Inside the method definition, the local variable b is assigned to the string object. At this point both the method variable b and the outer local variable a reference the same string object in memory
# * Inside the method definition a destructive method, index reassignment is used on the string object - the character at index position 2 is reassigned to a new value. this mutates the entire string object. Therefore the change is reflected in the outer local variable a since it references the same string object as b
