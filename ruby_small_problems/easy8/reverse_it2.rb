# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

=begin
  - convert the string into an array using #split
  - iterate over each element and check if the element has more than 5 or 5 characters
    - char.size => 5
    - if it does, reverse the string
    - if not return the original string
  - join the array
=end

def reverse_words(string)
  string.split.map do |char|
    char.size >= 5 ? char.reverse : char
  end.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
