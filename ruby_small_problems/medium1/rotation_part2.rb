# Write a method that can rotate the last n digits of a number. For example:

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

=begin
  Problem
    - shift the digit at -nth position to the end of the integer object
    - input => Integer, Output => Integer (New object)
    - explicit requirement => Return the original number if only 1 digit is provided as the second argument

  Example
    rotate_rightmost_digits(735291, 1) == 735291
    rotate_rightmost_digits(735291, 2) == 735219
    rotate_rightmost_digits(735291, 3) == 735912
    rotate_rightmost_digits(735291, 4) == 732915
    rotate_rightmost_digits(735291, 5) == 752913
    rotate_rightmost_digits(735291, 6) == 352917

  Algorithm
    - using `Integer#digits` convert the digits of the given integer into a array
    - reverse the resultant array using `Array#reverse` to get the digits in the desired order
    - assign the return value of the invocation of chained method to a variable
    - excplitiy return the integer of it contains only 1 digit
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  digits = integer.digits.reverse

  return integer if digits.size == 1
  (digits[0..(-n - 1)] + rotate_array(digits[-n..-1])).join.to_i
end

# alternate

def rotate_rightmost_digits(integer, n)
  digits = integer.digits.reverse
  digits[-n..-1] = rotate_array(digits[-n..-1])
  digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
