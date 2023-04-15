# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

=begin
  Breakdown
    - Sum 1: square of sum of 1..n integers
    - Sum 2: sum of square of 1..n integers
    - Output: sum 1 - sum 2
  
  Problem
    - Caluclate sum1
    - Calculate sum2
    - Return the difference
  
  Algorithm
    - To calculate sum1
      - (1..n).sum ** 2
    - To calculate sum2
      - Iterate from 1 till n
      - On each iteration find the square of n
      - Add the result of each iteration
    - Return sum 1 - sum 2
=end

def sum_square_difference(num)
  sum1(num) - sum2(num)
end

def sum1(num)
  (1..num).sum ** 2
end

def sum2(num)
  (1..num).reduce { |acc, num| acc + (num ** 2) }
end

# alternate

def sum2(num)
  (1..num).map { |num| num ** 2 }.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
