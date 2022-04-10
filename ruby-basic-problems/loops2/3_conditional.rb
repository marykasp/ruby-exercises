process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop wasn't processed!"
end

# loop will be run if process_the_loop variable is assigned to the boolean object true
# the loop inside the if clause will only be executed once, so use a break statement immediately following the puts method call inside the loop.
