def multiply_list(arr1, arr2)
  product_arr = Array.new

  arr1.each_with_index do |num, index|
    product_arr << (num * arr2[index])
  end

  product_arr
end

# further epxloration

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr[0] * sub_arr[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
