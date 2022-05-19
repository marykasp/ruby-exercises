# Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.

state = 'tExAs'
state = state.downcase
state[0] = 'T'
puts state


# capitalize method will return a new string, capitalize! will modify the original string that it is called on
state.capitalize!
puts state
