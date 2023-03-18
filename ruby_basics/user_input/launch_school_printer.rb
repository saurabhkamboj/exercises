# solution - this solution returns the variable of choice
choice = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3: "
  choice = gets.chomp.to_i
  break if choice >= 3
  puts "That's not enough lines."
end

choice.times { puts "Launch School is the best!" }

# alternate - this solution returns nil which is better.
number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end
