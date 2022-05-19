words = 'car human elephant airplane'

# use Array#each to print the plural word of each work in the string
words.split(' ').each do |word|
  puts "#{word}s"
end


# to iterate over each word in the string need to conver the string first into an array using the split method, pass in a empty string to split the string where there is a space - will return an array where each element is a word in the string


# then using .each method to iterate over the array of strings and print each to the screen
