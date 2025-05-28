def swapcase(string)
  string.chars.map do |chr|
    if ("a".."z").include?(chr)
      chr.upcase
    elsif ("A".."Z").include?(chr)
      chr.downcase
    else
      chr
    end
  end.join
end

def swapcase(string)
  string.chars.map do |chr|
    ("a".."z").include?(chr) ? chr.upcase : chr.downcase
  end.join
end

# alternate

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  
  characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
