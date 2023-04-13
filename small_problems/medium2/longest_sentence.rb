# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

=begin
  Breakdown
    - Sentences are split using '.', '?' or '!'
    - Any characters that are not spaces or sentence ending characters should be treated as words.

  Problem
    - Split the sentences in the given text.
    - Split the words in the given text.
    - Return the longest sentence by words and the count of words in it.

  Algorithm
    - Split the sentences in the given string
=end

require 'yaml'

string = YAML.load_file("longest_sentence_input.yml")

def format_string(str)
  str.squeeze("\n").gsub("\n", ' ')
end

def split_string(str)
  format_string(str).split('.').map do |substring|
    substring.split('!')
  end.flatten.map do |substring|
    substring.split('?')
  end.flatten
end

# alternate

def split_string(str)
  format_string(str).split(/\.|\?|!/)
end

def longest_sentence(str)
  longest_sentence = split_string(str).max_by { |substring| substring.split.size }

  puts longest_sentence.strip + '.'
  puts "The sentence above contains #{longest_sentence.split.size} words."
end

longest_sentence(string)
