# Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

greeting = 'Hello!'
greeting.gsub!('Hello!', 'Goodbye!')
puts greeting

# String#gsub allows you to replace certain charactes in a string, is called on the string and is passed substrings as arguments - the first string is the substring/character to look for and the second string is what to replace that string with
