PASSWORD = "sch00l"

loop do
  puts "Please enter your password: "
  answer = gets.chomp.to_s
  break if answer == PASSWORD
  puts "Invalid password!"
end

puts "Welcome!"
