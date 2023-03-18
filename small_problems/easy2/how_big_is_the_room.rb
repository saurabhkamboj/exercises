=begin
  Enter the length of the room in meters:
  10
  Enter the width of the room in meters:
  7
  The area of the room is 70.0 square meters (753.47 square feet).
=end

print "Enter the length of the room in meters: "
length = gets.to_f

print "Enter the width of the room in meters: "
width = gets.to_f

area_square_meter = (length * width).round(2)
area_square_feet = (area_square_meter * 10.7639).round(2)

puts "The area of the room is #{area_square_meter} " +
  "square meters (#{area_square_feet} square feet)."
