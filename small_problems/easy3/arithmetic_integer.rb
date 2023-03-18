def prompt(message)
  puts "==> #{message}"
end

# call to_f instead of to_i on `gets.chomp` to perform the calculations on floats

prompt("Enter the first number:")
first_number = gets.chomp.to_i

prompt"Enter the second number:"
second_number = gets.chomp.to_i

prompt"#{first_number} + #{second_number} = #{first_number + second_number}"
prompt"#{first_number} - #{second_number} = #{first_number - second_number}"
prompt"#{first_number} * #{second_number} = #{first_number * second_number}"
prompt"#{first_number} / #{second_number} = #{first_number / second_number}"
prompt"#{first_number} % #{second_number} = #{first_number % second_number}"
prompt"#{first_number} ** #{second_number} = #{first_number ** second_number}"
