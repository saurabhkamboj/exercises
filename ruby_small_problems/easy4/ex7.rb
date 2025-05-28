def string_to_integer(str)
  array = Array.new

  str.chars.each do |char|
    (0..9).each { |i| array << i if i.to_s == char }
  end

  total = 0
  array.each { |number| total = 10 * total + number }
  total
end

# alternate

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

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
