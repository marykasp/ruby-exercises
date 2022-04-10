array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# output is NameError - undefined local variable
#* A block following a method invocation each creates its own inner scope. Any local variable initialized inside the block, like variable a is not accessible outside the block. Therefore puts a will output an error.
# * The local variable a that is initialized in the block passed to the each method has a scope that is local to that block
