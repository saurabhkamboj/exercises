def reverse(list)
  new_list = Array.new
  right_index = -1

  list.size.times do |index|
    new_list[index] = list[right_index]

    right_index += -1
  end

  new_list
end

# alternate

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

# further exploration

def reverse(list)
  list.each_with_object([]) do |element, array|
    array.unshift(element)
  end
end

def reverse(list)
  list.inject([]) { |array, element| array.unshift(element) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
