=begin
  goal: return an array containing the running total of each element from a given array

  input: [2, 5, 13] <Running total of element at index 1 is 7 (2 + 5)>
  output: [2, 7, 20]

  modeling:
  - first element always remains the same
  - the last element in the new array is the sum of all the elements in the given array

  test cases:
  running_total([2, 5, 13]) == [2, 7, 20]
  running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
  running_total([3]) == [3]
  running_total([]) == []
=end

def running_total(array)
  running_totals = Array.new

  loop do
    break if array.size == 0
    running_totals << array.sum
    array.pop
  end
  
  running_totals.reverse
end

# alternate

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

# further exploration

def running_total(array)
  running_totals = Array.new

  array.each_with_index do |value, index|
    running_totals << array[0..index].inject(:+)
  end

  running_totals
end

def running_total(array)
  running_totals = []

  array.inject(0) do |sum, n| 
    running_totals << sum + n
    sum + n
  end

  running_totals
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
