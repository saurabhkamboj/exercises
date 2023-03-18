def sequence(integer)
  (1..integer).select { |i| i }
end

# alternate

def sequence(integer)
  (1..integer).to_a
end

# futher exploration

# Food for thought: what do you think sequence should return if the argument is not greater than 0. For instance, what should you do if the argument is -1? Can you alter your method to handle this case?

def sequence(integer)
  integer > 0 ? (1..integer).to_a : (integer..-1).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(-3) == [-3, -2, -1]
p sequence(1) == [1]
