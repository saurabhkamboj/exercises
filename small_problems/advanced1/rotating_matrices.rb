def rotate90(array)
  number_of_rows = array.size
  number_of_columns = array.first.size
  (0...number_of_columns).each_with_object([]) do |column_index, result|
    new_row = (0...number_of_rows).map do |row_index|
      array[row_index][column_index]
    end

    result << new_row.reverse
  end
end

# Alternatee by Will Read
def rotate90(matrix)
  (0...matrix.first.size).map do |column_index|
    (0...matrix.size).map do |row_index|
      matrix[row_index][column_index]
    end.reverse
  end
end

# Further exploration
def rotate(matrix, degree)
  (degree/90).times { |_| matrix = rotate90(matrix) }
  matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
