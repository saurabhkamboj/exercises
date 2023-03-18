# wrong solution
name = 'Roger'

name == 'RoGeR' ? puts(true) : puts(false)
name == 'DAVE' ? puts(true) : puts(false)

# right solution
name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0
