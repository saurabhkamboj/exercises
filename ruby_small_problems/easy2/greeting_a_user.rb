=begin
  What is your name? Bob
  Hello Bob.
  
  - if name includes '!' then,
  What is your name? Bob!
  HELLO BOB. WHY ARE WE SCREAMING?
=end

print "What is your name? "
name = gets.chomp
print_name = name.delete '!'

if name.include?('!')
  puts "HELLO #{print_name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{print_name.capitalize}."
end
