def print_in_box(str)
  line_length = str.size

  puts type_one(line_length)
  puts type_two(line_length)
  puts main_line(str)
  puts type_two(line_length)
  puts type_one(line_length)
end

def type_one(length)
  print "+-"
  length.times { print "-" }
  print "-+"
end

def type_two(length)
  print "| "
  length.times { print " " }
  print " |"
end

def main_line(string)
  print "| "
  print string
  print " |"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# alternate

def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end
