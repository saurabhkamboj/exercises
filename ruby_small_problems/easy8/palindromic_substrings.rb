def leading_substrings(string)
  string.chars.map.with_index do |_, index|
    string[0..index]
  end
end

def palindromes(string)
  array = []

  (string.size).times do |index|
    leading_substrings(string[index..-1]).each do |substring|
      if (substring.size > 1) && (substring == substring.reverse)
        array << substring
      end
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

def palindromes(string)
  substrings_array = substrings(string)

  substrings_array.select do |substring|
    palindrome?(substring)
  end
end

def palindrome?(string)
  (string.size > 1) && (string == string.reverse)
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# further exploration

def clean_string(string)
  string.gsub(/[^a-zA-Z0-9]/, "")
end

def leading_substrings(string)
  clean_string(string).chars.map.with_index do |_, index|
    clean_string(string)[0..index]
  end
end

def substrings(string)
  array = []

  (string.size).times do |index|
    array.concat(leading_substrings(string[index..-1]))
  end

  array
end

def palindromes(string)
  substrings_array = substrings(string)

  substrings_array.select do |substring|
    palindrome?(substring)
  end
end

def palindrome?(string)
  (string.size > 1) && (string == string.reverse)
end

p palindromes('hello-madam-did-madam-goodbye') 
