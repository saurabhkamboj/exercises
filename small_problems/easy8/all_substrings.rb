# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

def substrings(string)
  array = Array.new

  string.chars.each_with_index do |_, index|
    1.upto(string.size - index) do |count|
      array << string[index, count]
    end
  end

  array
end

# alternate

def leading_substrings(string)
  string.chars.map.with_index do |_, index|
    string[0..index]
  end
end

def substrings(string)
  array = []

  (string.size).times do |index|
    array.concat(leading_substrings(string[index..-1]))
  end

  array
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
