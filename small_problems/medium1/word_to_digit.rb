# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

=begin
  Problem:
    - convert the words representing numbers in a sentence into digits and return the converted string.
    - data
      - input => String
      - output => String
      - conversion
        - find a specific string value that represents a number within the string
        - replace it with a digit equivalant
  Example:
    - word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
  Algorithm:
    - initiatte a hash constant with keys as the word format of a number and values in the digits format.
    - initiate an array of the words present wihtin the stirng
    - map each word within the array
      - if the constants hash includes the word as a key
        - reutrn the value associated with the key,
        - else return word
    - join the returned array with the results of each iteration using Array#join
        - use a '" "' as a delimeter
    - deviated from the algorithm upon realizing a minor flaw in it
=end

NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'].zip(('0'..'9').to_a).to_h

def word_to_digit(str)
  str.split('.').map do |sentence|
    sentence.split.map do |word|
      NUMBERS.include?(word) ? NUMBERS[word] : word
    end.join(' ').concat('.')
  end.join(' ')
end

# alternate

def word_to_digit(str)
  str.split.map do |word|
    key = word.gsub(/[^a-z]/, '')
    NUMBERS.include?(key) ? word.gsub(key, NUMBERS[key]) : word
  end.join(' ')
end

# alternate by Launch School

def word_to_digit(str)
  NUMBERS.keys.each do |word|
    str.gsub!(/\b#{word}\b/, NUMBERS[word])
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
