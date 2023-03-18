def word_sizes(str)
  format_string(str).each_with_object(Hash.new(0)) do |word, hash|
      hash[word.length] += 1
  end
end

def format_string(str)
  str.split.map do |word|
    word.gsub(/[^a-zA-Z]/, "")
  end
end

# alternate

def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) do |word, hash|
    clean_word = word.gsub(/[^a-zA-Z]/, "")  
    hash[clean_word.length] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
