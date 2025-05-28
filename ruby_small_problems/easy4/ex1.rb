=begin
  Problem:
  - a method that takes 2 string objects as arguments.
  - compares the size of both the strings and
  - returns a string created in the following manner:
    - short string, long string, short string
  
  Test cases:
  short_long_short('abc', 'defgh') == "abcdefghabc"
  short_long_short('abcde', 'fgh') == "fghabcdefgh"
  short_long_short('', 'xyz') == "xyz"

  Algorithm:
  - if string1 > string2
    string2 + string1 + string2
  - else
    string1 + string2 + string1
=end

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
