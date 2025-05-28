# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

=begin
  Breakdown
    - Input: String
    - Output: Hash
    - The hash contains the percentage of lowercase, uppercase and neither characters.
    - The uppercase letters are letter == letter.upcase, downcase letters are letter == letter.downcase
    - Percentage is value / sum of values % 100 (Make sure values have 1 decimal)

  Problem
    - Collect the count of lowercase, uppercase and niether chars in a hash
    - Iterate through the hash & equate the values to percentage of all values
    - Return the resultant hash.

  Algorithm
    - Initiate a hash with 3 key-value pairs as defined in the example with values as 0
    - Iterate through each character in the string with a hash object
      - If character == character.upcase
        - hash[:uppercase] += 1
      - If character == character.downcase
        - hash[:lowercase] += 1
      - Else
        - hash[:neither] += 1
    - Iterate through the hash
      - On each iteration hash[key] = (hash[key]/string.size) * 100
=end

def letter_percentages(str)
  case_hash = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }
  
  str.each_char do |char|
    if ('a'..'z').include?(char)
      case_hash[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      case_hash[:uppercase] += 1
    else
      case_hash[:neither] += 1
    end
  end

  case_hash.each do |key, value|
    case_hash[key] = (value / str.size) * 100
  end

  case_hash
end

# Examples

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
