def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def input
  loop do
    puts "Please enter a positive or negative integer: "
    number = gets.chomp

    return number.to_i if valid_number?(number)
    puts "Invalid input. Only non-zero integers are allowed."
  end
end

integer_one = nil
integer_two = nil

loop do
  integer_one = input
  integer_two = input

  break if integer_one * integer_two < 0
  puts "Sorry. One integer must be positive, one must be negative."
  puts "Please start over."
end

result = integer_one + integer_two
puts "#{integer_one} + #{integer_two} = #{result}"
