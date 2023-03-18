=begin
  - convert the string into an array
  - add letters into a new array
    - if the character equals previous character, next
    - else add character
=end

def crunch(str)
  clean_characters = Array.new

  str.chars.each do |char|
    if clean_characters.last == char
      next
    else
      clean_characters << char
    end
  end

  clean_characters.join
end

# alternate

def crunch(text)
  index = 0
  crunch_text = ''
  until index == text.length # replaced while with until
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
