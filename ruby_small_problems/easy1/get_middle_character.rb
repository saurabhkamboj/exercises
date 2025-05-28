def center_of(str)
  center_index = str.size / 2

  if str.size.odd?
    str[center_index]
  else
    str[center_index - 1, 2]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
