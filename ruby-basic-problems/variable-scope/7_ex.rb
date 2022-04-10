a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# output is 3
# * This is an example of a do/end block following a method invocation. Blocks create their own inner scope but they have access to variables initialized outside their scope. Therefore on line 5 the outer scoped variable is reassigned to the current element upon each iteration of the loop. The last element in the array is 3 so a will be assigned to the integer object 3.
