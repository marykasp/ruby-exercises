def dog(name)
  return name
end

def cat(name)
  return name
end
puts "The dog's name is #{dog('Spot')}"
puts "The cat's name is #{cat('Ginger')}"

# when running the code before correcting should have gotten Argument Error - wrong number of arguments. This error tells you that dog method was passed an argument when called, but the dog method does not accept any arguments since no parameters were defined in the method definition. Fix this by giving the dog method a parameter - placeholder for data that is passed in when the method is called.

# The second error is also an ArgumentError but this time it is because no arguments were passed in when one was expected for the cat method. The cat method accepts one argument so when you call the method need to pass it a value where it is then assigned to the method local variable name.
