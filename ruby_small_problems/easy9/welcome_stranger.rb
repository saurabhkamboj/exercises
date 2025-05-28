def greetings(array, hash)
  puts "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

# further exploration

def greetings(array, hash)
  puts "Hello, #{array.join(' ')}! " \
    "Nice to have a #{hash.values.join(' ')} around."
end

# alternate

def greetings(array, hash)
  puts sprintf(
    'Hello, %s! Nice to have a %s around.',
    "#{array.join(' ')}",
    "#{hash.values.join(' ')}")
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."
