a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# outputs a MethodError - undefined method + for nilClass
# * This code shows a block following a method invocation inside a method definition. The outer scope for the block would be any variables initialized inside the method definition. The each block does not have access to the top level local variable a.
# The reassignment on line 6 would throw an error since there are no method defined or block defined variable a, has not been initialized.
