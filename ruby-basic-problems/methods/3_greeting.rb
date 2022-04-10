def hello
  "Hello"
end

def world
  "World"
end

puts "#{hello} #{world}"

# use string interpolation to combine the string return values of the method
# can also use string concatenation
puts hello + " " + world
