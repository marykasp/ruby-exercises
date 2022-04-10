a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# This will output 7
# * This is an example of variable shadowing, occurs when a block's parameter has the same name as an outer scoped local variable. This prevents the block from being able to access to the outer scoped variable of the same name, the block's parameter takes precedence.
# Therefore a is not reassigned to a new integer object since the a variable in the block refers to the block's parameter. So the outer scoped variable a still points to integer object 7.
