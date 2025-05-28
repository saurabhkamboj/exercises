def include?(arr, num)
  arr.each do |i|
    return true if i == num
  end

  false
end

# alternate

def include?(arr, num)
  !!arr.find_index(num)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
