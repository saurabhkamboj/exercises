# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# Example:

# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

=begin
  - if rotate_right_most can be used, the idea is to determine n
  - we can determine n using Array#length and iterate using Integer#times
    - on each iteration numbers 0...(length - 1) will be assigned to the parameter (i) within the block
    - n can be determined using 'digits - i'
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  digit_array = integer.digits.reverse
  digit_array[-n..-1] = rotate_array(digit_array[-n..-1])
  digit_array.join.to_i
end

def max_rotation(integer)
  digits = integer.digits.length
  digits.times do |i|
    integer = rotate_rightmost_digits(integer, (digits - i))
  end

  integer
end

# alternate

def max_rotation(integer)
  digits = integer.digits.length
  digits.downto(2) do |i|
    integer = rotate_rightmost_digits(integer, i)
  end

  integer
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
