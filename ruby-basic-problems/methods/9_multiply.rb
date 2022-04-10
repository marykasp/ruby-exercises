def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9

# multiply(4, 9)
puts multiply(add(2,2), add(5,4)) == 36

# method calls can be passed other method as their argument - the return value of the method will be passed to the method local variable and used inside the method
