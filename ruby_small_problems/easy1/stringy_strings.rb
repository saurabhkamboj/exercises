def stringy(int)
  numbers = []

  int.times do |i|
    number = i.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# further exploration

def stringy(int, type=1)
  numbers = []

  case type
  when 1
    int.times do |i|
      number = i.even? ? 1 : 0
      numbers << number
    end
  else
    int.times do |i|
      number = i.odd? ? 1 : 0
      numbers << number
    end
  end

  numbers.join
end

puts stringy(6, 0)
puts stringy(9, 1)
puts stringy(4, 0)
puts stringy(7, 1)
