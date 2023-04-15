# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

=begin
  Breakdown
    - Featured number => Odd, multiple of 7, each digit occours once.
    - Input: Integer
    - Output: The next greater integer which is a featured number

  Problem
    - Craete a loop & add 1 to the given number
    - Break if the resultant is a featured number
    - Return the featured number

  Algorithm
    - Intialise a variable and assign the given number
    - Create a loop
      - On each iteration add 1 to the variable
      - Return the error message if variable has > 9 digits
      - Break if variable references a featured number
    - Return the variable

    - To check if a number is featured number
      - number.odd? && number % 7 == 0 && number.to_s.tally.any? { |key, value| value > 1 }
=end

def featured(int)
  number = int

  loop do
    number += 1

    return "There is no possible number that fulfills those requirements" if number.to_s.size > 10
    break if featured_number?(number)
  end

  number
end

def featured_number?(int)
  int.odd? && int % 7 == 0 && int.digits.uniq == int.digits
end

# alternate

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
