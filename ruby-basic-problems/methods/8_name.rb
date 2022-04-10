# method that accepts one argument but doesn't require it. default string to 'Bob' if no arguments are passed in

def assign_name(name="Bob")
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == "Bob"

# set a default parameter when the method is defined. So you can call the method without passing in a parameter, it will use the default one instead.
