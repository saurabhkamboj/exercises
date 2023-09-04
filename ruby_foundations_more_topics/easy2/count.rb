def count(*arguments)
  arguments.inject(0) do |acc, value|
    yield(value) ? acc + 1 : acc
  end
end

# Alternate
def count(*arguments)
  total = 0
  arguments.each { |item| total += 1 if yield(item) }
  total
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
