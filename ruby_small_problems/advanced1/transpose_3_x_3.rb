matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(array)
  (0...array.size).map do |row|
    (0...array.size).map do |column|
      array[column][row]
    end
  end
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Further exploration

def transpose!(array)
  (0...array.size).each do |row|
    (row...array.size).each do |column|
      array[row][column], array[column][row] = array[column][row], array[row][column]
    end
  end
end

transpose!(matrix)

p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
