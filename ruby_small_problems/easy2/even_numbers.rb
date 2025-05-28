for i in 1..99
  puts i if i % 2 == 0
end

# alternate

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
