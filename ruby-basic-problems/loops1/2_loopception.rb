loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break # exit out of the nested loop
  end

  break # exit out of the outer loop
end

puts 'This is outside all loops.'
