words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def anagrams(list)
  list.map do |key|
    list.select do |word|
      word.chars.all? { |char| key.include?(char) }
    end
  end.uniq
end

anagrams(words).each { |list| p list }

# alternate by Nick Perry

def anagrams(list)
  result = list.group_by { |key| key.chars.sort.join }
  result.each_value { |value| p value }
end

anagrams(words)

# alternate by Launch School

result = {}

words.each do |word|
  key = word.chars.sort.join
  
  if result.has_key?(key)
    result[key] << word
  else
    result[key] = [word]
  end
end

result.each_value { |value| p value }
