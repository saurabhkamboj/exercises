# solution
numbers = []

while numbers.count < 5
  number = rand(100)
  numbers.push(number)
end

puts numbers

# alternate
numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers
