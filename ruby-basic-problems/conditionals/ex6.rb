stoplight = ['green', 'yellow', 'red'].sample

# Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'

case stoplight
  when 'green' then puts "Go!"
  when 'yellow' then puts "Slow down!"
  when 'red' then puts "Stop!"
end

# case statements used when comparing multiple values to a single variable
