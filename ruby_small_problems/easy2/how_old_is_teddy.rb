puts "Teddy is #{rand(20..200)} years old!" # can also use (20..200).to_a.sample

# => Teddy is 69 years old!

# further exploration
age = rand(20..200)
print "What is your name? "
name = gets.chomp || "Teddy"
name = name.empty? ? "Teddy" : name

puts "#{name} is #{age} years old!"
