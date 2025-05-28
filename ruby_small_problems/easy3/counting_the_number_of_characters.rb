print "Please write word or multiple words: "
answer = gets.chomp

count = answer.delete(' ').size
puts "There are #{count} characters in \"#{answer}\"."
