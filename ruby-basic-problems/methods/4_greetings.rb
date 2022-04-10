def hello
  'Hello'
end

def world
  "World"
end

def greet
  "#{hello} #{world}"
end

puts greet

# greet method invokes both the other methods and concatenates their string object return value - so itself also returns a string value which is then passed to the puts method call and is outputted to the string.
