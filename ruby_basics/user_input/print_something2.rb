# solution
loop do
  puts "Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
  if answer == "Y" || answer == "N"
    if answer == "Y"
    puts "something"
    end
    break
  end
  puts "Invalid input! Please enter y or n"
end

# alternate
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'
