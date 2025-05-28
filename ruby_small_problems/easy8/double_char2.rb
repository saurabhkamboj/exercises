def double_consonants(string)
  string.chars.map do |char|
    if char =~ /[aeiou]/ || char =~ /[^a-zA-Z]/
      char
    else
      char * 2
    end
  end.join
end

# alternate

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  string.chars.each_with_object('') do |char, result|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
