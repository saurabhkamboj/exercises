# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

=begin
  Problem
    - Shift the first element in the array, assign the returned object to a variable, append that variable to the array
    - Input => Array, Output => New array
    - Explicit requirement => Do not use Array#rotate or Array#rotate!
    - Implicit requirement => Do not mutate the original array

  Examples
    rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
    rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
    rotate_array(['a']) == ['a']

    x = [1, 2, 3, 4]
    rotate_array(x) == [2, 3, 4, 1]   # => true
    x == [1, 2, 3, 4]                 # => true

  Algorithm
    - Intialise a new variable with the return value array.clone assigne to it
    - Append the cloned array with the return value of new_array.shift
=end

def rotate_array(array)
  new_array = array.clone
  new_array << new_array.shift
end

# alternate by Launch School

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]
p x == [1, 2, 3, 4]

# Write a method that rotates a string instead of an array. Do the same thing for integers. You may use rotate_array from inside your new method.

# furtther exploration

def rotate_string(string)
  string[1..-1] + string[0]
end

p rotate_string("abcd") == "bcda"
p rotate_string("1234") == "2341"
p rotate_string("a") == "a"

y = "efgh"
p rotate_string(y) == "fghe"
p y == "efgh"

def rotate_integer(integer)
  rotate_array(integer.digits.reverse).join.to_i
end

p rotate_integer(1234) == 2341
p rotate_integer(345_789) == 457893
p rotate_integer(10) == 01

z = 4756
p rotate_integer(z) == 7564
p z == 4756
