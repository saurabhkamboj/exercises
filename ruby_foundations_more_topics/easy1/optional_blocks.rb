def compute
  return "Does not compute." unless block_given?
  yield
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'

# Alternate

def compute
  block_given? ? yield : "Does not compute."
end

# Further exploration

def compute(argument='')
  return "Does not compute." unless block_given?
  yield(argument)
end

p compute(4) { |argument| 5 + argument }
p compute('a') { |argument| argument + 'b' }
p compute
