def friday_13th(year)
  result = 0
  month = 0

  12.times do
    month += 1
    thirteenth_date = Time.local(year, month, 13)
    result += 1 if thirteenth_date.friday?
  end

  result
end

# alternate

require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
