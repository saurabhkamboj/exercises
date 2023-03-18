=begin
  What is the bill? 200
  What is the tip percentage? 15

  The tip is $30.0
  The total is $230.0
=end

print "What is the bill? "
bill_amount = gets.to_f

print "What is the tip percentage? "
tip_rate = gets.to_f

tip = (bill_amount / tip_rate)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", tip + bill_amount)}"
