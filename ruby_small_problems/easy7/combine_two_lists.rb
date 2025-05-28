=begin
  problem:
    - return a new array with alternate elements from the arrays passed in as arguments
    - example > method_name([1, 2], ["a", "b"]) => [1, "a", 2, "b"]
    - we can assume that both the arrays will have the same number of elements
    - we can also assume that the arrays will not be empty
  
  data-structures:
    input - two array objects with equal number of elements
    output - a single array object
=end

def interleave(arr1, arr2)
  interleaved_arr = Array.new

  arr1.size.times do |i|
    interleaved_arr << arr1[i]
    interleaved_arr << arr2[i]
  end

  interleaved_arr
end

# alternate

def interleave(arr1, arr2)
  interleaved_arr = Array.new

  arr1.each_with_index do |element, index|
    interleaved_arr << element << arr2[index]
  end

  interleaved_arr
end

# further exploration

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) # == [1, 'a', 2, 'b', 3, 'c']
