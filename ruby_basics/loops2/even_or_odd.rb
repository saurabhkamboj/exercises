# solution
count = 1

loop do
  if count.even?
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end

  break if count == 5
  count += 1
end

# alternate
count = 1

loop do
  puts count.odd? ? "#{count} is odd!" : "#{count} is even!"
  count += 1
  break if count > 5
end
