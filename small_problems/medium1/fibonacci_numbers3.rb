def fibonacci_last(nth)
  first = 1
  last = 1

  3.upto(nth) do
    first, last = last, (first + last) % 10
  end

  last
end

p fibonacci_last(15) == 0
p fibonacci_last(20) == 5
p fibonacci_last(100) == 5
p fibonacci_last(100_001) == 1

# alternate 1

def fibonacci_last(nth)
  first = 1
  last = 1

  3.upto(nth % 60) do
    first, last = last, (first + last) % 10
  end

  last
end

# alternate 2

def fibonacci_last(int)
  return 1 if int <= 2
  fib_sequence = [1, 1]
  int = int % 60

  3.upto(int) do
    fib_sequence << fib_sequence[-2..-1].sum
  end

  fib_sequence[-1].to_s[-1].to_i
end

p fibonacci_last(15) == 0
p fibonacci_last(20) == 5
p fibonacci_last(100) == 5
p fibonacci_last(100_001) == 1
p fibonacci_last(1_000_007) == 3
p fibonacci_last(123456789) == 4
p fibonacci_last(123_456_789_987_745) == 5 
