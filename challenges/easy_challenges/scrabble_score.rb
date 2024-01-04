# Problem => https://launchschool.com/exercises/243941c0

=begin
  Details
    - Calculate scrabble score for a word.
    - Each letter has a given score. They are:
      A, E, I, O, U, L, N, R, S, T	1
      D, G	2
      B, C, M, P	3
      F, H, V, W, Y	4
      K	5
      J, X	8
      Q, Z	10
    - The sum of values of each letter in the word.

  Examples
    - A `Scrabble` class has to be created. The class has 3 methods:
      - A constructor that takes a string as an argument.
      - An instance method named `#score` that returns the score as an integer object.
      - We need a class method `#score` that behaves exactly similar to the instance method of the same name.
    - Return 0 as score if the input is not a word.
    - The input is the value passed passed in as an argument to the calling of `#new` on `Scrabble`.
    - Basically we do when we instantiate a new object of the Scrabble class.

  Problem
    - Return 0 if input is not a word.
    - Iterate over each letter of the word.
    - Find the values of each letter.
    - Return the sum of all values.

  Data structures
    - We'll require a hash that contains the given letter arrays as keys and the value they have as values.

  Problem
    - Initialise a VALUES constant

    Constructor
      - assign the argument to the instance variable @word

    `#score` instance method
      - return 0 if @word references `nil` or contains whitespace.
      - Iterate over each letter in the given word.
        - Find the key within VALUES hash that includes the word.
        - Return the value associated with selected key.
      - Return the sum of all values.

    Helper method to find the key
      - Take a string as an argument.
      - Iterate over all keys in the VALUES hash
        - Select the key if it includes the given letter in upcase.
      - Return a flattened array.
=end

class Scrabble
  attr_reader :word

  VALUES = { %w(A E I O U L N R S T) =>	1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10 }

  def initialize(word_string)
    @word = word_string
  end

  def score
    return 0 if (word.nil? || word.chars.all?(/\s/))
    word.chars.map { |letter| VALUES[key(letter)] }.sum
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  private

  def key(letter)
    VALUES.keys.select do |key|
      key.include?(letter.upcase)
    end.flatten
  end
end

# Alternate after better reading of example
class Scrabble
  attr_reader :word

  VALUES = { %w(A E I O U L N R S T) =>	1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10 }

  def initialize(word_string)
    @word = word_string ? word_string : ''
  end

  def score
    letters = word.upcase.gsub(/\s/,'').chars

    total = 0
    letters.each do |letter|
      VALUES.each do |key, value|
        total += value if key.include?(letter)
      end
    end

    total
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end

# Alternate 2
class Scrabble
  attr_reader :word

  VALUES = { %w(A E I O U L N R S T) =>	1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10 }

  def initialize(word_string)
    @word = word_string ? word_string : ''
  end

  def score
    letters = word.upcase.gsub(/\s/,'').chars

    letters.inject(0) do |sum, letter|
      VALUES.each do |key, value|
        sum += value if key.include?(letter)
      end

      sum
    end
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end
