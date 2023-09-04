def divisors(number)
  (1..number).select do |current_number| # Can also 1.upto(number)
    number % current_number == 0
  end
end

# Further exploration
def divisors(number)
  num = Math.sqrt(number).to_i
  1.upto(num).each_with_object([]) do |n , result|
    if number % n == 0
      result << n
      result << number / n
    end
  end.uniq.sort
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
