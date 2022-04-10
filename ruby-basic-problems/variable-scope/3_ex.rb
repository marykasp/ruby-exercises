a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# will output 7. The local variable a inside the method definitions is not visible outside the method definition.
# Method parameter b is assigned to the integer object 12 when the method is called, inside the method a method scoped local variable a is initialized and assigned to the same integer object 12. Both local scoped method variables are referencing the same object in memory.
# * But since these variables are initialized inside the method definition they cannot be accessed outside the method. Therefore the outer scoped local variable a still points to integer object 7 - it is not affected by calling the my_value method
