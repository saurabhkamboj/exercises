def palindrome?(str)
  str.reverse == str
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

# futher exploration

def advance_palindrome?(obj)
  obj.reverse == obj #lol
end

def real_palindrome?(obj)
  new_obj = obj.class.new
  reverse_counter = (obj.size - 1)

  while reverse_counter >= 0
    new_obj << obj[reverse_counter]
    reverse_counter -= 1
  end

  new_obj == obj
end

real_palindrome?('madam')
real_palindrome?([true, 'a', 'd', 'a', true])
