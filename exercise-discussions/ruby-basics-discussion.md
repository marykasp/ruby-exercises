# Ruby Basics

## Variable Scope

### Exercise 1 - What's my value?

```ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
```

This will print 7 to the screen. The value of `a` which is `7` is passed into the method definition as an argument nd assigned to the local variable `b`. Inside the method definition there is a **reassignment** which does not mutate a variable, it binds the variable to a new object, in this case `b` will be bound to the integer object `10`. The object pointed to by `a` therefore remains unchanged so it is still equal to `7`

- Numbers in Ruby are immutable

### Exercise 2

```ruby
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
```

Prints `7` to the screen. Method definitions are self contained with respect to local variables. Local variables outside the method definition are not visible inside the method defintion and local variables created inside a method definition are not visible outside of it, so `a` inside `my_value` is a local variable with no top-level visibility

### Exercise 3

```ruby
a = 7

def my_value(b)
  a = b
  return a
end

new_value = my_value(a + 5)
puts a
puts new_value # => 12
```

Prints `7` the variable `a` inside the method is not visible outside the method definition. method definitions are self contained with respect to local variables.

The value `12` is passed as an argument to the method definition, inside the method a new local variable `a` is declared and assigned to the value of the argument which is `12`. The method then returns that value to where the method is called. So can save that value in a new variable and access it. The variable `a` outside the method is not affect and is still equal to `7`.

### Exercise 4

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a #=> "Xy-zy"
```

This method takes a string as an argument. Inside the method a character in the string is being selected and modified. Instead of reassigning a whole new object instead we are reassinging a character in the string. Strings are mutable - they can be modified and the method `String#[]=` is a mutating method. Since we are modifying the string referenced by `b` and `b` references the same string as `a` the result from printing `a` will show the updated string value.

### Exercise 5

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```

**assignment to a variable (an object) never mutates the object that is referenced.**

This will print `Xyzzy`. The string value from `a` is being passed into the method but it is not being modified. `b` is set to reference the same string that is referenced by `a`. If we modify that string by using `b`, then that modification is reflected in `a`; it's the same string. Instead, we are assigning a completely new string to `b`. Assignment never changes the value of an object; instead, it creates a new object, and then stores a reference to that object in the variable on the left.

`b` references the string `'yzzyX'`, while `a` remains unchanged: it still references `"Xyzzy"`.

### Exercise 6

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```

This code would raise an error - `NameError` `undefined local variable`

Even though `a` is defined before `my_value` is defined, it is not visible inside `my_value`. The method only has access to the data that is passed in as **arguments during the method cal**l. Method definitions are self contained with respect to local variables.

### Exercise 7

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

prints `3`. This program iterates through an array, inside the `each` block, `a` is reassigned to the current element in the iteration. The last element in the array is `3` so `a` will be assigned to that value. Since `each` is a code block it does have access to local variables outside its scope - **the block can use and modify local variables that are defined outside the block**

### Exercise 8

```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

This code would throw a `NameError`. There is no initialization of the `a` variable in the outer scope before calling the `each` method on the array and passing it a block. Local variable `a` is not defined in scope so it will produce an error.

The local variable `a` that is **initialized in the block** passed to the `each` method has a scope that is local to that block. `a = element` inside the method block is **initialization** and not reassignment.

### Exercise 9

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```

This problem demonstrates _shadowing_. Shadowing occurs when a block argument hides a local variable that is defined outside the block. Since the outer `a` is shadowed, the `a += 1` has no effect on it. In fact, that statement has no effect at all.

### Exercise 10

```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
```

`a` at the top level is not visible inside the invocation of the `each` method with a block because the invocation of `each` is inside `my_value`, and method definitions are self-contained with respect to local variables. Since the outer `a` is not visible inside the `my_value` method definition, it isn't visible inside the method invocation with a block.

## Loops

### Exercise 1 - Runaway Loop

```ruby
loop do
  puts 'Just keep printing...'
  break
end
```

Without the `break` keyword this is an **infinite loop**. `break` keywords allows us to break out of loop after one iteration - normally always necessary when using `loop` and it doesn't require any conditions. When the `loop` encounters the `break` keyword the loop stops iterating immediately and exits the block. So to have the print line be executed the `break` keyword needs to come after.

### Exercise 2 - Loopception

```ruby
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break # break out of inner loop
  end
  break # break out of the outer loop
end

puts 'This is outside all loops.'
```

Need to add `break` keyword to each of the loops- the inner and outermost loops. Modify the innermost loop block by placing a `break` on the line that follows the `#puts` statement. This forces the loop to iterate only once. Now in the parent loop (outermost loop) the `break` can be placed on the line following the `end` of the innermost loop this allows that first `#puts` line to be executed. Normally you don't want to use loops to just perform one iteration.

### Exercise 3 - Control the Loop

```ruby
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end
```

`loop` iterates over the given block and stops only when the `break` is executed. In this case `break` has a condition in which the `iterations` variable has to be greater than 5. `iterations` variable is used to track the number of iterations of the loop. In order to increment the `iterations` add 1 each time the loop iterates over the block.

**if break statement is moved before iterations is incremented what would need to be changed?**

the condition would need to be different, instead check if `iterations == 5` since the increment is occurring after the `break` statement rather than before

```ruby
iterations = 1
loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end
```

### Exercise 4 - Loop on Command

```ruby
loop do
  puts 'Should I stop looping?'
  # get input from user
  answer = gets.chomp
  break if answer == 'yes' # case-sensitive - needs to be an exact match
  # output an error message if their input is anything other than yes
  puts "To exit the loop please answer 'yes'"
end
```

`break` with an `if` condition, the condition needs to check if the user input `answer == 'yes'`, so the loop will only stop executing if the input value is `"yes"` (case-sensitive). If not the first `#puts` line will be asked again and the loop will wait for the user response.

Can also add an error message after the `break` that will be executed if the user does not enter the correct value to exit the loop.

Can change the condition so that the input value does not have to be case-sensitive, use `String#downcase` method on input value - user can enter using all caps and still be able to exit the loop.

### Exercise 5 - Say Hello

```ruby
say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter > 5
end

while say_hello
  puts 'Hello!'
  say_hello = false if counter == 5
  counter += 1
end
```

`while` loop will run as long as `say_hello` evaluates to **true**. In this case `say_hello`variable is set to `true` and is reassigned to `false` after one loop iteration. So the `while` loop will only be executed once.

Can keep track of the loop iterations by using a `counter` variable. This will keep track of how many times 'hello' is printed. Once `hello` is printed 5 times then `say_hello` can be reassigned to `false`. So upon each loop iteration `counter` is incremented by 1 and an `if` statement will evaluate to `true` once count is greater than 5

### Exercise 6 - Print While

Print 5 random numbers between 0 and 99

```ruby
numbers = [] # collect 5 randomm numbers before outputting to screen

while numbers.size < 5
  # mutates array by appending argument to end of calling array
  numbers.push(rand(100))
end

puts numbers # will iterate over array and print each element on its own line, will output as a string object
numbers.each { |num| puts num }
```

Use `#rand` to get random numbers, and push that number to the `numbers` array. `#rand()` will return a random number between 0 and one less than the number provided as its argument. Tell `while` loop to stop iterating after 5 numbers have been added to the array by checking the arrays length with `numbers.size` or `numbers.length`

### Exercise 7 - Count Up

```ruby
count = 10

until count == 0
  puts count
  count -= 1
end

counter = 1
# count up from 1 to 10
until counter > 10
  puts counter
  counter += 1
end
```

`until` loop is the opposite of the `while` loop. `while` iterates until the condition is false. `unntil` iterates until the condition is true. We would like `until` to iterate until `count` is greater than 10. Need to use `> 10` so 10 will be included in the output. `count` needs to be initialized to 1 instead of 10 since counting up and `count` should be incremented by 1 upon each iteration.

### Exercise 8 - Print Until

Use until loop to print each number

```ruby
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1 # iteration counter increment
end

while count != numbers.size
  puts numbers[count]
  count += 1
end
```

Use a counter variable to track the current iteration number. `count` variable is used to set the condition, where the loop will stop once `count` equals the length of the `numbers` array. It also is used to selec the value of the array by acting as an `index`. Count matches the index of each number we want to print.

### Exercise 9 - That's Odd

```ruby
for i in 1..100
  puts i if i % 2 != 0
end

for i in 1..100
  puts i if i.odd?
end
```

`for` loops can be used to iterate over a collection. In this case it is used to iterate over the range `1..100` therefore the `i` variable represents the current iteration number. To only output the odd numbers, add an `if` statement to tell `#puts` to only output `i` if `i` is an odd number - can use modulo operator `i % 2 != 0` or use `#odd?` Method.

### Exercise 10 - Greet Your Friends

```ruby
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello #{friend}"
end
```

`for` loop can be used to iterate over each element in an array. To output the name along with a greeting can use `friend` variable which represents the current element. Then can use a `#puts` statement with string interpolation to output a greeting with the `friend's` name

## Loops2

### Exercise 1 - Even or Odd?

```ruby
count = 1

loop do
  if count.odd?
    puts "#{count} is odd"
  else
    puts "#{count} is even"
  end
  count += 1
  break if count > 5
end

loop do
  if count.even?
    puts "#{count} is even"
  else
    puts "#{count} is odd"
  end

  break if count == 5
  count += 1
end
```

`count` is the iteration counter, inside the loop it increments by 1 upon each loop iteration. `break` out of the loop once `count` is greater than 5 since the count is incremented before the `break` statement. Then use an `if/else` statement that prints whether the number is even or odd. The condition checks if the `count` is odd, if true then will `#puts` the following statement. `else` will `#puts` number is even.

### Exercise 2 - Catch the Number

```ruby
loop do
  number = rand(100)
  puts number
  # break if number >= 0 || number <= 10

  break if number.between?(0, 10)
end
```

Inside the loop a random number is being assigned to the `number` variable upon each iteration. Then that `number` is being printed to the screen. The loop will end if the `number.between?(0, 10)` returns true - takes two arguments and returns a boolean if the caller's value is between the two integers provided. Use `break` keyword with this conditional to `break` out of the loop when this condition evaluates to true.

### Exercise 3 - Conditional Loop

```ruby
process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop wasn't processed!"
end
```

`process_the_loop` will be assigned randomly to either true or false. The loop will only be executed if `process_the_loop` is true. Use an `if/else` statement to accommplish this - the `if` statement will contain a `loop` that executes once, so a `break` statement immediately follows the `#puts` line. For the `else` statement no loop is run so just need to add a `#puts` statement that is executed if `process_the_loop` is false.

### Exercise 4 - Get the Sum

```ruby
loop do
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i # convert input to integer
  if answer == 4
    puts "That's correct!"
    break
  end
  puts "Wrong answer. Try again!"
end
```

Assign the user input to a variable, convert the string output to an integer in order to compare it to an integer in the `if` condition. The value of `answer` will be checked in the `if` condition - if equals 4 then use `#puts` to print the statement and then use `break` to exit out of the loop. If `answer` is not 4 then the error will be printed and the loop will begin again (continue its iteration)

### Exercise 5 - Insert Numbers

```ruby
numbers = []

loop do
  puts "Enter any nummber"
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.size == 5
end

puts numbers # print each element on a new line
```

Add an integer to an array. `Array#push` method will take the value of `input` as its argument and add it to the end of the `numbers` caller array. The loop needs to be stopped once the array length is 5 - `Array#size` returns the number of elements contained in the caller. So once `numbers` contains 5 elements, we can add a `break` with an `if` `numbers.size == 5` condition.

### Exercise 6 - Empty the Array

```ruby
names = ["Sally", "Joe", "Lisa", "Henry"]

loop do
  name = names.shift() # remove element from beginning of array
  puts name
  break if names.size == 0
end
```

To accomplish this using a `loop`, can use `Array#shift` method which removes the first element in an array and returns that value, the value can then be stored in the `name` variable. This method mutates the caller, so the original array will be modified - the first name will be removed upon each iteration of the loop. Then can use `#puts` to print the returned value. The loop will end once there are no more elemnts in the array so can use a `break` statement with an `if` condition that checks the length of the array `names.size == 0`.

Can also use the `Array#empty?` method - checks to see if there are any elements in an array and returns a boolean.

### Exercise7 - Stop Counting

```ruby
5.times do |index|
  # prints 0 to 4
  puts index
  break if index == 2
end
```

The `times` method counts from 0 to **one less** than the specified number. In this case, that number is 5. The block parameter `index` represents the current iteration number. We can print the current number with `puts index`

If the block needs to stop looping once the index equals 2 then we can use the `break` keyword to exit out of the loop

### Exercise 8 - Only Even

```ruby
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end
```

`next` keyword allows you to skip an iteration in a loop. So in this case one is added to the counter variable, then the `next` keyword will work if the condition `number.odd?` evaluates to true. So the following line `puts number` will not be executed, instead the loop will start back at the beginning. This loop will then only print **even numbers**

### Exercise 9

```ruby
loop do
  # increments the variables by either 0 or 1 using randomm number generation
  number_a += rand(2)
  number_b += rand(2)

  # will skip iterations until either number equals 5
  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end
```

`next` to skip the rest of the current iteration based on a condition. By placing `next` before `#puts` and `break`, we can skip to the next iteration so they aren't processed until we stop skipping. We use an `unless` condition for `next` that won't evaluate to `true` unless either `number_a` or `number_b` equal `5`

### Exercise10 - Greeting

```ruby
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end
```

Want to call the `greeting` method two times. We will make our conditional evaluate to `true` until `number_of_greetings` is less than 1. We control the value of `number_of_greetings` by subtracting 1 on each iteration. To print `"Hello!"` we just need to invoke the `greeting`method provided to us inside the `while` loop.

## User Input

### Exericse 1

```ruby
puts ">> Type anything you want: "
result = gets.chomp

puts result
```

This program first uses `#puts` to display a prompt. After displaying the prompt, we use `#gets` to read a line of input from the user and store it a variable named `text`. Also use `chomp` to remove the `\n` newline symbol added after the end of the user entry.

Finally, we use `#puts` a second time to redisplay what the user typed.

### Exercise 2

```ruby
puts "What is your age? "
# gets returns a string convert to an integer before using
age = gets.chomp.to_i

months_in_year = 12
age_to_months = age * 12

puts "Age: #{age}, you are #{age_to_months} months old"
```

`#puts` to display a prompt and output our results. and use `#gets` to obtain a value from the user. Since we need to perform a calculation on the input value we need to convert it from a String to an Integer by using the `to_i` method. We then multiple the result by 12 to get the age in months.

### Exercise 3

```ruby
puts ">> Do you want me to print something? (y/n) "
answer = gets.chomp

puts "something" if answer == 'y'
```

Here we display an appropriate prompt using `#puts`, obtain the user's input with `#gets`, and finally, print `something` with `#puts` if the user entered a `y`. Note that we now need to use `#chomp` on the return value of `#gets`; if we don't, the newline character will be included in `answer`, and `answer == 'y'` will return `false`. This code will run even if the user doesn't enter anything in.

Can also put if statement on one line `puts "somethinng" if answer == 'y'`

### Exercise 4

Modify previous program so that it prints an error message for an inputs that are not `y` or `n` and then ask user to try again. So keep looping over the prompt until the user enters in `y` or `n`, then check the user's answer.

```ruby
answer = nil
loop do
  puts ">> Do you want to print something (y/n)"
  answer = gets.chomp.downcase
  # includes method checks if the parameter passed in is located in the array it is called upon
  break if answer ['y', 'n'].include?(answer)
  puts "Invalid response, please enter y or n"
end

puts "something" if answer == 'y'
```

Variables created inside loops are scoped in such a way that they are not visible to the outside, but variables defined outside the block can be accessed inside the block. This `do/end` block follows a loop invocation. Need to set a local variable `answer` to `nil` outside the loop so it will be available both inside the loop and after the loop has finished running. Inside the loop the `answer` variable will be reassigned to whatever the user enters.

Use a `break` statement to exit the loop if the user's input is a valid choice. use `include?` and call it on an `Array` that contains the list of valid entries. If the user's answer does not include the valid options an error message will be printed to the screen. This will continue until the user enters a valid option.

After the loop is done executing, then we check if the `answer` variable value is equal to the string `y`, if true then `something` is printed to the screen with the `#puts` method.

### Exercise 5

Write a program that prints `Launch School is the best!` until a certain number of lines have been printed. Program should obtain the number of lines from the user, should insist at least 3 lines are printed.

```ruby
lines = nil
loop do
  puts ">> How many lines should be printed? (Enter a number >= 3)"
  lines = gets.chomp.to_i
  break if lines >= 3
  puts ">> Please enter a number greater than or equal to 3"
end

lines.times do
  puts "Launch School is the best!
end
```

Use looping to obtain a valid input from the user, need to convert the user input to an integer using `to_i` method. Then a `break` statement checks if the user entered a value that is at least `3`. If so the loop is exited out of and the `times` method is called on the `lines` variable that points to the `integer object`, `times` method block is executed based on the number it is called on.

### Exercise 6

write a program that displays a welcome messsage, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program

```ruby
PASSWORD = "secreT"

loop do
  puts ">> Please enter your password:"
  user_response = gets.chomp
  break if user_response === PASSWORD
  puts ">> Invalid password! Try again"
end

puts "Welcome!"
```

In this loop we do not need to provide access to the user's entered response since it is not used outside of the loop. Only inside the loop in the `break` statement condition is the value evaluated.

### Exercise 7

Modify the program so that is requires a user name. Should validate both, and issue a generic error message if one or both are incorrect. The message should not tell the user which item is incorrect

```ruby
USERNAME = "admin"
PASSWORD = "SecreT"
loop do
  puts ">> Please enter user name:"
  user_name = gets.chomp
  puts ">> Please enter password:"
  password = gets.chomp
  break if user_name == USERNAME && password == PASSWORD
  puts ">> Authorization failed!"
end

puts "Welcome!"
```

Inside the loop we get two pieces of information from the user, the user name and password, and then validate the two entries in a `break` statement.

Passwords are treated as case sensitive. User names vary a bit. On some systems, the user name is case sensitive, while on others, it is case insensitive. This solution assumes the user names are case sensitive but can be converted with `.downcase`

### Exercise 8

Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second. The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid integer. Therefore, you must validate the input to be sure it is an integer. You can use the following code to determine whether the input is an integer:

```ruby
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
# returns true if the input string can be converted to an integer and back to a string without loss of information

numerator = nil
denominator = nil

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers allowed"
end

loop do
  puts ">> Please enter the denominator:"
  demoninator = gets.chomp
  if denominator.to_i == 0
    puts ">> Invalid input. 0 is not allowed."
  else
    break if valid_number?(denominator)
    puts ">> Invalid input. Only integers allowed"
end

puts " #{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"

```

Need separate loops for each piece of information. The second loop asking the user for the denominator requires two checks. Can use an `if/else` statement or a `break` statement with two conditions using the `&&` operator.

### Exercise 9

Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.

```ruby
loop do
  lines = nil

  loop do
    puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit)"
    lines = gets.chomp.downcase
    break if lines.to_i >= 3 || lines == 'q'
    puts ">> That's not enough lines"
  end

  break if lines == 'q'

  lines.times do
    puts "Launch School si the best!"
  end
end
```

Requires an outer loop to control the repitition of the input and output processes. Handling two types of inputs - numeric and alphabetic.

The inner loop is followed by a `break` statement to check if the user entered `q`. This is necessary before the next line of code is run since the user didn't enter any number lines but instead enter a letter.

### Exercise 10

Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter. Don't check for positive/negative until both integers are entered

```ruby
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts ">> Please enter a positive or negative number:"
    number = gets.chomp.to_i
    return number if valid_number?(number)
    puts ">> Invalid input. Only non-zero integers allowed"
  end
end

num1 = nil
num2 = nil
loop do
  num1 = read_number # user input number is returned
  num2 = read_number

  # break if one number is negative and the other is positive
  break if num1 * num2 < 0
  puts "Sorry. One integer must be positive and one best be negative"
end

sum = num1 + num2
puts "#{num1} + #{num2} = #{sum}"
```

```ruby
num1 = nil
num2 = nil

loop do
  loop do
    puts "Please enter a positive or negative integer:"
    num1 = gets.chomp
    break if valid_number?(num1)
    puts "Plase enter a valid number"
  end


end

```

## Methods

### Exercise 1

Write a method that prints a sentence when invoked:

```ruby
def print_me
  puts "I'm printing within the method!"
end

# invoke method
print_me
```

`#puts` inside a method prints its argument to the console and returns `nil`

### Exercise 2

Write a method so that the sentence is printed when running
`puts print_me`

```ruby
def print_me
  "I'm printing the return value"
end

puts print_me # prints the return value of the method, and returns nil
```

### Exercise 3

Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.

```ruby
def hello
  "Hello"
end

def world
  "World"
end

puts "#{hello} #{world}"
```

First define the methods and have each method return a string object. Then use string interpolation as the argument to the `puts` method, where each method is invoked and the return value - string object - is inserted into the string

### Exercise 4

```ruby
def hello
  'Hello'
end

def world
  'World'
end

def greet
  "#{hello} #{world}"
end

puts greet # Hello World
```

The string interpolation is being extracted and placed in a method called `greet`. Then both methods are invoked inside the string interpolation. That string object value of `Hello World` is then returned from the `greet` method when the `greet` method is invoked

### Exercise 5

Write a method called `car` that takes two arguments

```ruby
def car(make, model)
  puts "#{make} #{model}"
end

car('Toyota', 'Corolla')
```

Parameters act as placeholders for the arguments (data) that is passed into the method when the method is invoked. If the method invocation provides two arguments, then the method definition must be able to accept two arguments and be defined with two parameters.

Without the `#puts` method inside the function, the concatenatd string will be returned to where the method is called and in order to output the string to the console need to save in a variable and then call `#puts` and pass it that variable as an argument. Or pass the invoked `car` method as an argument to the `#puts` method

### Exercise 6

The variable below will be randomly assigned as true or false. Write a method named `time_of_day` that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.

```ruby
daylight = [true, false].sample

def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)
```

Method accepts one argument and proceeds to use that argument in the `if` statement. If the argument evaluates as `true` then the `if` clause will be executed. If it evaluates as `false` then the `else` clause will be executed.

The `daylight` parameter where the method is defined is a method scoped local variable and different than the outer scoped local variable `daylight`. When the `time_of_day` method is invoked it is passed a **copy of the reference** to the value the outer scoped `daylight` variable points to.

Inside the method definition the reference to the boolean object is assigned to the method scoped `daylight` variable. So now the method scoped and the outer scoped local variable point to the same boolean object in memory.

These two variables happen to reference the same value when `time_of_day` is invoked. The code would still function the same if we had given our method anothe paramter name

### Exercise 7

```ruby
def dog
  return name # no name parameter is defined will throw an error
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat}." # need to pass the function an argument since was defined to take one argument in the method definition
```

```ruby
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."
```

Both methods require one argument to be passed when the function is called, in both cases the argument is a string object that will be returned once the method is invoked.

### Exercise 8

Write a method that accepts one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.

```ruby
def assign_name(name="Bob")
  return name
end

puts assign_name('Kevin') # Kevin
puts assign_name # 'Bob'
```

This is an example of using a default parameter, if no argument is passed in when the method is called then the default will be used inside the method definition

### Exercise 9

```ruby
def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
```

Write two methods, one that adds the number objects passed in and one that multiplies the number arguments. Return the results to the method caller, in this case using implicit return. If the `return` keyword is not used Ruby will return the evaluated value of the last expression in the method definition.

### Exercise 10

The variables below are both assigned to arrays. The first one, names, contains a list of names. The second one, activities, contains a list of activities. Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence and returns it from the method.

```ruby
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(arr)
  arr.sample
end

def activity(arr)
  arr.sample
end

def sentence(name, activity)
  return "#{name} went #{activity} today!"
end


puts sentence(name(names), activity(activities))
```

Use `Array#sample` to grab a random value from the array and return it from the method - using implicit return.

Then those methods are passed as arguments into the `sentence` method, so the return value of those methods will be passed into the `sentence` method definition. Those return values are then used inside a string interpolation that is returned from calling the `sentence` method, the string object is then printed to the screen by passing it to the `#puts` method.
