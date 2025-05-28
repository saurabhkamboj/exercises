=begin
  Recursive method to calculate sum of 1 to n

  def sum(n)
    return 1 if n == 1
    n + sum(n - 1)
  end
=end

# f(n) = f(n - 1) + f(n - 2) when n > 2

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
