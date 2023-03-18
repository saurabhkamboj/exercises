def count_occurrences(arr)
  hash = {}

  arr.each do |vehicle|
    if hash.key?(vehicle)
      hash[vehicle] += 1
    else
      hash[vehicle] = 1
    end
  end

  hash.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# alternate

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

# further exploration

def count_occurrences(arr)
  hash = {}

  arr.each do |vehicle|
    vehicle = vehicle.downcase
    
    if hash.key?(vehicle)
      hash[vehicle] += 1
    else
      hash[vehicle] = 1
    end
  end

  hash.each { |key, value| puts "#{key} => #{value}" }
end

count_occurrences(vehicles)

# expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2