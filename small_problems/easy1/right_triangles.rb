=begin
  - iterate through 1..n
  - pass the current value as an argument (i) into a block
  - within the block print (n - i) number of spaces and n number of stars concatenated together
=end

def triangle(int)
  for i in 1..int
    puts " " * (int - i) + "*" * i
  end
end

triangle(5)
triangle(9)
