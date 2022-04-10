USERNAME = 'admin'
PASSWORD = "SecreT"

loop do
  puts ">> Please enter user name:"
  user = gets.chomp
  puts ">> Please enter your password: "
  password = gets.chomp
  break if user == USERNAME && password == PASSWORD
  puts "Authorization failed!"
end

puts "Welcome!"
