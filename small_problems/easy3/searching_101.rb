=begin
  - ask the user to input 5 numbers, each one on a different line
  - add the each input integer into an array
  - ask the user to input the last number
  - check if the last number is included in the array
  - if included return the positive statement, if not return the negative statement
=end

def prompt(ordinal)
  puts "==> Enter the #{ordinal} number:"
end

prompt("1st")
number1 = gets.chomp.to_i

prompt("2nd")
number2 = gets.chomp.to_i

prompt("3rd")
number3 = gets.chomp.to_i

prompt("4th")
number4 = gets.chomp.to_i

prompt("5th")
number5 = gets.chomp.to_i

array = [number1, number2, number3, number4, number5]

prompt("last")
number6 = gets.chomp.to_i

if array.include?(number6)
  puts "The number #{number6} appears in #{array}."
else
  puts "The number #{number6} does not appear in #{array}."
end

# alternate

numbers = []

puts "Enter the 1st number:"
numbers << gets.chomp.to_i
puts "Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "Enter the 4th number:"
numbers << gets.chomp.to_i
puts "Enter the 5th number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end
