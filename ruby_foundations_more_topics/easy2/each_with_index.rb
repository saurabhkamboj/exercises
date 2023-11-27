def each_with_index(array)
  (0...array.size).each do |index|
    yield(array[index], index)
  end

  array
end

# Alternate
def each_with_index(array)
  index = 0
  array.each do |element|
    yield(element, index)
    index += 1
  end
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
