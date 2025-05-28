# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

=begin
  Problem:
  Return the sum of elements till the current index on each iteration

  Data structures:
  Input - array
  Output - Integer

  Algorithm:
  - On each iteration:
    - calculate the sum of elements zero to n, where n is the current index
      - arr[0..n].sum
    - add this sum to total
      - total += arr[0..n].sum
=end

def sum_of_sums(array)
  total = 0

  array.each_with_index do |_, index|
    total += array[0..index].sum
  end

  total
end

# alternate

def sum_of_sums(nums)
  nums.map.with_index { |_, i| nums[0..i].sum }.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
