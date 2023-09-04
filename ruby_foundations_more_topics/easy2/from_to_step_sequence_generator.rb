=begin
  Breakdown
    - Iterate over a range
    - Each value is previous iterator plus a 'step' value
    - Return an array with values at each step
    - Input: First value, End value, step value
=end

def step(start_value, end_value, step_value, &block)
  current_value = start_value
  result = []

  loop do
    yield(current_value)
    result << current_value
    break if current_value == end_value

    current_value += step_value
  end

  result
end

# Alternate
def step(start_value, end_value, step_value, &block)
  current_value = start_value
  result = []

  loop do
    yield(current_value)
    result << current_value
    break if current_value + step_value > end_value

    current_value += step_value
  end

  result
end

p step(1, 10, 3) { |value| puts "value = #{value}" }
