=begin
  - number of minutes in an hour is 60
  - number of hours in a day is 24
  - number minutes in a day = 1440
  - the integer parameter in the method represents the minutes 
=end

def time_of_day(num)
  hours, minutes = format_number(num).divmod(60)
  format('%02d:%02d', hours, minutes)
end

def format_number(num)
  while num < 0
    num += 1440
  end

  num % 1440
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
