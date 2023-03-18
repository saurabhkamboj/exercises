=begin
  Problem:
  - for any year as an input, return the century the century
  - the return value should be a string which is the century's number
  - the  string should end with st, nd, rd, or th as appropriate for that number

  Test cases:
  century(2000) == '20th'
  century(2001) == '21st'
  century(1965) == '20th'
  century(256) == '3rd'
  century(5) == '1st'
  century(10103) == '102nd'
  century(1052) == '11th'
  century(1127) == '12th'
  century(11201) == '113th'

  Data structure:
  - a century is 100 years, therefore (year / 100) + 1 should give us the century
  - however for year such as 2000 the century should be 19, therefore in such case the century will be (year/100) - 1
    - we can identity such cases using %, (year % 100) will be 0.
  - the st, nd, rd, and th can be added based on the last number within the string:
    - st > 1
    - nd > 2
    - rd > 3
    - th > 4, 5, 6, 7, 8, 9, 0, 11, 12, 13

  Algorithm:
  - if year % 100 != 0
    - century = (year / 100) + 1
  - else
    - century = (year / 100)
=end

def century(year)
  century = ''

  if year % 100 != 0
    century = (year / 100) + 1
  else
    century = year / 100
  end

  century.to_s + suffix(century)
end

def suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)

  case century % 10
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else
    'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
