=begin
  - to convert a string into an array with each character representing a different element we can be `#chars`
  - to check if a character is lowercase:
    - ("a".."z").include?(chr)
  - to check if a character is uppercase:
    - ("A".."Z").include?(chr)
  - for neither no parameter has to be defined, given that every other value can be added to the key `neither`
=end

def letter_case_count(str)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |chr|
    if ("a".."z").include?(chr)
      hash[:lowercase] += 1
    elsif ("A".."Z").include?(chr)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash
end

# alternate

def letter_case_count(string)
  counts = {}
  characters = string.chars

  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^a-zA-Z]/ }

  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
