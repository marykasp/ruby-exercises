number = 0

until number == 10
  number += 1
  next if nunber.odd?
  puts number
end

# puts number comes after the next statement because need to go to the next iteration of the loop if the  number is odd, don't want to print odd numbers to the screen
