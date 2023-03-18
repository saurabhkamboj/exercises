def buy_fruit(array)
  array.each_with_object([]) do |sub_array, array|
    sub_array[1].times { array << sub_array[0] }
  end
end

# alternate

def buy_fruit(list)
  list.each_with_object([]) do |item, expanded_list|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end
end

# alternate 2

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]
