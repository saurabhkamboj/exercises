def staggered_case(string)
  staggered_string = ''

  string.chars.each_with_index do |char, index|
    if char =~ /[^a-zA-Z]/
      staggered_string << char
    elsif index.odd?
      staggered_string << char.downcase
    else
      staggered_string << char.upcase
    end
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# further exploration

def staggered_case_with_choice(string, need_upper: true)
  staggered_string = ''

  string.chars do |char|
    if need_upper
      staggered_string << char.upcase
    else
      staggered_string << char.downcase
    end

    need_upper = !need_upper
  end

  staggered_string
end

def staggered_case_with_choice(string, first_char: 'upper')
  staggered_string = ''
  need_upper = (first_char == 'upper' ? true : false)

  string.chars do |char|
    if need_upper
      staggered_string << char.upcase
    else
      staggered_string << char.downcase
    end

    need_upper = !need_upper
  end

  staggered_string
end

p staggered_case_with_choice('I Love Launch School!')
p staggered_case_with_choice('ALL_CAPS')
p staggered_case_with_choice('ignore 77 the 444 numbers')
