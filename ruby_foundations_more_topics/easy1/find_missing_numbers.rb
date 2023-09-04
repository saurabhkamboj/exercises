def missing(array)
  (array[0]..array[-1]).each_with_object([]) do |number, acc_array|
    acc_array.push(number) unless array.include?(number)
  end
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
