# A collection of spelling blocks has two letters per block, as shown in this list:

BLOCKS = {
  'B' => 'O',
  'X' => 'K',
  'D' => 'Q',
  'C' => 'P',
  'N' => 'A',
  'G' => 'T',
  'R' => 'E',
  'F' => 'S',
  'J' => 'W',
  'H' => 'U',
  'V' => 'I',
  'L' => 'Y',
  'Z' => 'M'
}

# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

=begin
  - initiate an array which contains the letters in the word passed in as the argument
  - iterate over each letter in the array
    - if the value correspondiing to the letter key in hash is present within the word return false
  - if the the method does not return after iteration, return true

=end

def block_word?(word)
  letters = word.upcase.chars
  letters.each do |char|
    return false if letters.include?(BLOCKS[char])
  end
  true
end

# alternate by Launch School

def block_word?(word)
 BLOCKS.all? { |key, value| word.count(key + value) <= 1 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
