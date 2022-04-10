number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts "5 was reached!"
  break
end

# use next to skip the current iteration until number_a or number_b equals 5. So unless its equal 5 next will run and the loop will start from the beginning.
# once number_a or number_b equals 5 then the puts method will be called and the loop will be exited out of with the break keyword

loop do
  number_a += rand(2)
  number_b += rand(2)
  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end
