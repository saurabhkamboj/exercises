def sum(number)
  number.digits.sum
end

# alternate

def sum(number)
  number.digits.reduce { |num, sum| sum + num }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
