def word_sizes(str)
  str.split.each_with_object({}) do |word, hash|
    if hash.key?(word.length)
      hash[word.length] += 1
    else
      hash[word.length] = 1
    end
  end
end

# alternate

def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) do |word, hash|
      hash[word.length] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
