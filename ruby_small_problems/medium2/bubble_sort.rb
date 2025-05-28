=begin
  Breakdown
    - Each consequtive pair is compared, if element 1 is greater than element 2, then the elements are swapped.
    - This process is repeated till no swaps take place.
    - Input: Array
    - Output: Original array

  Data structure
    - [5, 3, 4] => [5, 3] 5 > 3 ? true arr[0], arr[1] = arr[1], arr[0] => [3, 5, 4]
    - next
    - [5, 4] => 5 > 4 ? true arr[1], arr[2] = arr[2], arr[1] => [3, 4, 5]
    - next
    - [3, 4] => 3 > 4 ? false next
    - [4, 5] => 4 > 5 ? false next or break ? break if index of 2nd element = size - 1

  Problem
    - Create a loop
    - Iterate through the array and reference sub_arr of length 2 starting from the index of the current element
    - Compare the elements, if true, swap;
    - Break if all iterations return false

  Algorithm
    - Initiate a loop
    - Iterate with index from 0 till arr.size - 2
      - if arr[index] > arr[index + 1]
        - arr[index], arr[index + 1] = arr[index + 1], arr[index]
      - else
        - false
    - Save the truthiness of each iteration
    - Break the loop if all elements evaluate as false
=end

def bubble_sort!(arr)
  loop do
    results = (0...arr.length - 1).map do |index|
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
      else
        false
      end
    end

    break if results.all?(false)
  end

  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
