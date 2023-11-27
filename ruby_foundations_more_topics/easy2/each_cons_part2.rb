def each_cons(array, count)
  array.each_with_index do |element, index|
    break if index + count - 1 >= array.size
    yield(*array[index..(index + count - 1)])
  end

  nil
end

# Alternate
def each_cons(array, count)
  (0..array.size - count).each do |index|
    yield(*array[index, count])
  end

  nil
end

# Alternate by Benjamin Walker
def each_cons(array, count)
  0.upto(array.size - count) do |index|
    yield(*array[index, count])
  end

  nil
end

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}
