def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter an integer greater than 0:")
operand = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
operation = gets.chomp

result = case operation
        when 's'
          (1..operand).inject(:+) # can also use (1..n).each { |i| total += i }, need to initiate total in this case
        else
          (1..operand).inject(:*)
        end

operator = operation == 's' ? 'sum' : 'product'

puts "The #{operator} of the integers between 1 and #{operand} is #{result}."
