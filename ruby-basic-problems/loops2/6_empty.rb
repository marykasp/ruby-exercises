names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end

while names.size > 0
  puts names.shift
end

until names.empty?
  puts names.shift
end
