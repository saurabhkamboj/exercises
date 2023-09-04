# Write a method that takes an array as an argument, and a block that returns true or false depending on the value of the array element passed to it. The method should return a count of the number of times the block returns true.

# You may not use Array#count or Enumerable#count in your solution.

def count(array, &block)
  counter = 0

  array.each do |object|
    (counter += 1) if yield(object)
  end
  
  counter
end

# Alternate
def count(array, &block)
  array.inject(0) do |count, object|
    yield(object) ? count + 1 : count
  end
end

# Alternate
def count(array, &block)
  array.select { |object| yield(object) }.size
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2
