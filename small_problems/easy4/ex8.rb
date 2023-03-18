def string_to_integer(str)
  array = Array.new

  str.chars.each do |char|
    (0..9).each { |i| array << i if i.to_s == char }
  end

  total = 0
  array.each { |number| total = 10 * total + number }
  total
end

def string_to_signed_integer(string)
  if string[0] == '-'
    -string_to_integer(string)
  else
    string_to_integer(string)
  end
end

# further exploration

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  number = string_to_integer(string.delete('^0-9'))
  string.include?('-') ? -number : number
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
