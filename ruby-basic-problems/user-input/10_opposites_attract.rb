def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def check_number
  loop do
    puts ">> Please enter a positive or negative integer"
    num = gets.chomp
    return num.to_i if valid_number?(num)
    puts ">> Invalid Input. Only non-zero integers are allowed."
  end
end

number1 =  nil
number2 = nil

loop do
  number1 = check_number
  number2 = check_number
  break if number1 * number2 < 0
  puts ">> Sorry one integer must be positive, one must be negative"
  puts ">> Please start over."
end

sum = number1 + number2
puts "#{number1} + #{number2} = #{sum}"
