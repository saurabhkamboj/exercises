=begin
  What is your age? 30
  At what age would you like to retire? 70

  It's 2016. You will retire in 2056.
  You have only 40 years of work to go!
=end

print "What is your age? "
current_age = gets.to_i

print "At what age would you like to retire? "
retiring_age = gets.to_i

years_left = retiring_age - current_age
retiring_year = years_left + Time.now.year

puts "It's #{Time.now.year}. You will retire in #{retiring_year}."
puts "You have only #{years_left} years of work to go!"
