# Problem => https://launchschool.com/exercises/b7be1b38

=begin
  Details
    - Detect anagrams of a given word.
    - Anagram is a word or a phrase formed by re-arranging
      the letters of a different word or phrase.
    - The detection is case in-sensitive.
    - Identical words are no anagrams.

  Examples
    - An `Anagram` class has to be created. The class should have 2 methods:
      - A constructor that takes an integer as an argument.
        The constructor does not raise any errors.
      - A method that takes an array of strings as argument and returns
        an array containing anagrams. The name of the method will be `#match`.

  Data structures
    - Input => The input for the constructor method is a
      string and for `#match` instance method it's an array.
    - Output => Array of anagrams

  Algortihm
    Constructor
    - Take a string an argument.
    - Assign it in lowercase to an instance variable.

    `#match` method
    - Take an array as an argument.
    - Iterate over each element of the array. On each iteration:
      - Skip iteration is element.downcase == input.downcase
      - Compare the sorted lower case characters of the current
        element with sorted characters of input string.
      - Select the element if the comparison returns true.
    - Return the array of selected elements.
=end

class Anagram
  def initialize(string)
    @input = string.downcase
  end

  def match(array)
    array.select do |element|
      next if element.downcase == @input
      element.downcase.chars.sort == @input.chars.sort
    end
  end
end

# Alternate
class Anagram
  attr_reader :input

  def initialize(word)
    @input = word.downcase
  end

  def match(word_array)
    word_array.select do |element|
      element.downcase != input && anagram?(element, input)
    end
  end

  private

  def sorted_chars(word)
    word.downcase.chars.sort
  end

  def anagram?(word1, word2)
    sorted_chars(word1) == sorted_chars(word2)
  end
end
