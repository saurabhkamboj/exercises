def staggered_case(string, first_char: 'upper')
  staggered_string = ''
  need_upper = (first_char == 'upper' ? true : false)

  string.chars do |char|
    if char =~ /[^a-zA-Z]/
      staggered_string << char
      next
    end

    if need_upper
      staggered_string << char.upcase
    else
      staggered_string << char.downcase
    end

    need_upper = !need_upper
  end

  staggered_string
end

# alternate

def staggered_case(string)
  staggered_string = ''
  need_upper = true

  string.chars.each do |char|
    if char =~ /[^a-zA-Z]/
      staggered_string << char
    else
      if need_upper
        staggered_string << char.upcase
      else
        staggered_string << char.downcase
      end

      need_upper = !need_upper
    end
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# further exploration

def staggered_case(string, first_char: 'upper', count_other: true)
  staggered_string = ''
  need_upper = (first_char == 'upper' ? true : false)

  string.chars do |char|
    if char =~ /[^a-zA-Z]/
      staggered_string << char
      next if count_other
    end

    if need_upper
      staggered_string << char.upcase
    else
      staggered_string << char.downcase
    end

    need_upper = !need_upper
  end

  staggered_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
