USERNAME = "saurabh"
PASSWORD = "sch00l"

loop do
  puts "Please enter user name: "
  answer_username = gets.chomp.to_s

  puts "Please enter your password: "
  answer_password = gets.chomp.to_s

  break if answer_username == USERNAME && answer_password == PASSWORD
  puts "Authorization failed!"
end

puts "Welcome!"
