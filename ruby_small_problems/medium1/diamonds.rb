# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

def diamond(int)
  rows = (1..int).step(2).to_a
  rows += rows.reverse[1..-1]
  rows.each do |row|
    puts ('*' * row).center(int)
  end
end

def hollow_diamond(int)
  rows = (1..int).step(2).to_a
  rows += rows.reverse[1..-1]
  
  rows.each do |row|
    row_format = Array.new(row, '*').fill(' ', 1..-2)
    puts (row_format.join).center(int)
  end
end

diamond(1)
diamond(3)
diamond(9)

hollow_diamond(1)
hollow_diamond(3)
hollow_diamond(5)
hollow_diamond(9)
