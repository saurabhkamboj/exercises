# Write a method that takes a string, and returns a new string in which every character is doubled.

=begin
  - convert the string into an array with each character as a separate element
  - iterate of each element using map
    - return 2 values of the same character on each iteration
  - join the return array
=end

def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
