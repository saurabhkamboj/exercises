def find_fibonacci_index_by_length(length)
  fibonacci_series = []
  current_number = 1
  previous_number = 0

  loop do
    fibonacci_series << current_number
    break if current_number.to_s.size == length

    current_number += previous_number
    previous_number = fibonacci_series.last
  end

  fibonacci_series.size
end

# alternate

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
