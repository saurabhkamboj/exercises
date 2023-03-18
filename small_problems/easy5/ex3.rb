=begin
  - '12:54'
    - number of hours = 12
    - number of minutes = 54
  - for after_midnight
    - number of minutes in hours + number of minutes
  - for before midnight
    - number of minutes in hours - number of minutes

  - detecting hours and minutes in a string
    - arr = string.split(":")
    - hours = arr[0].to_i
    - minutes = arr[1].to_i
=end

def after_midnight(str)
  hours = str.split(":")[0]
  minutes = str.split(":")[1]

  ((hours.to_i * 60) + minutes.to_i) % 1440
end

def before_midnight(str)
  hours = str.split(":")[0]
  minutes = str.split(":")[1]

  total_minutes = (hours.to_i * 60) - minutes.to_i

  return 0 if total_minutes == 1440
  total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
