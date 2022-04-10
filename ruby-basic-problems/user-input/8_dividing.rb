def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts ">> Please enter the numerator"
  numerator = gets.chomp

  break valid_number?(numerator)
  puts ">> Invalid input. Only integers allowed."
end

denominator = nil
loop do
  puts ">> Please enter the denoninator"
  denominator = gets.chomp

  break if valid_number?(denominator) && denominator.to_i != 0
  puts ">> Invalid Input. Denominator 0 is not allowd, only integers"
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"
