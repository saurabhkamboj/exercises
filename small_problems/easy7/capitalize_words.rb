def word_cap(str)
  word_arr = Array.new

  str.split(' ').each do |word|
      word_arr << word.capitalize
  end

  word_arr.join(' ')
end

# alternate

def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

# further exploration

def word_cap(str)
  str.downcase.split.map do |word|
    word[0] = word[0].upcase
    word
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
