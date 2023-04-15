# Solution by Launch School

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

# Further exploration

OPEN_PARENS = ['(', '[', '{']
CLOSE_PARENS = [')', ']', '}']

def balanced?(string)
  count = [0, 0, 0]

  string.each_char do |char|
    count.map!.with_index do |count, index|
      count += 1 if OPEN_PARENS[index] == char
      count -= 1 if CLOSE_PARENS[index] == char

      return false if count < 0
      count
    end
  end

  count.all?(0)
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
