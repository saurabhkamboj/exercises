def swap(str)
  formated_array = str.split.map do |i|
    if i.size == 1
      i
    else
      i[-1] + i[1..-2] + i[0]
    end
  end

  formated_array.join(' ')
end

# alternate

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
