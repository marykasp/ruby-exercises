def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string != 0
end

def compute
  num1 = nil
  num2 = nil

  loop do
    puts "Please enter a positive or negative integer"
    num1 = gets.chomp
    break if valid_number?(num1)
    puts "Invalid input. Try again"
  end

  loop do
    puts "Please enter a positive or negative integer"
    num2 = gets.chomp
    break if valid_number?(num2)
    puts "Invalid input."
  end

  num1 = num1.to_i
  num2 = num2.to_i
  result = num1 + num2
  if (num1 > 0 && num2 < 0) || (num1 < 0 && num2 > 0)
    puts "#{num1} + #{num2} = #{result}"
  else
    puts "Sorry. One integer must be positive, the other negative."
    compute
  end
end

compute
