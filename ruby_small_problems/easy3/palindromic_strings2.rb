# sub methods

def palindrome?(str)
  str.reverse == str
end

def converter(str)
  new_str = str.class.new

  str.downcase.each_char do |char|
    new_str << char if ("a".."z").include?(char) || (1..9).include?(char)
  end

  new_str
end

# main method

def real_palindrome?(str)
  palindrome?(converter(str).downcase)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

# alternate

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end
