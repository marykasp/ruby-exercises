sun = ['visible', 'hidden'].sample

# Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.

# When writing these statements, take advantage of Ruby's expressiveness and use statement modifiers instead of an if...end statement to print results only when some condition is met or not met.

puts "The sun is so bright" if sun === 'visible'
puts "The clouds are blocking the sun!" unless sun === 'visible'; # will execute when sun is hidden

# call puts and append an if or unless condition - if the condition is true or if the unless conndition evaluates to false then the puts calls will run
