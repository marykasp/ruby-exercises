iterations = 1 # tracks number of iterations

# have loop iterate 5 times
loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end
