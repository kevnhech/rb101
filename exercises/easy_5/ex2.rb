# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# input: integer
# output: time of day in 24 hour format (string)
# rules: if the number of minutes is positive, the time is after midnight
#        if the number of minutes is negative, the time is before midnight

# initialize constant `MINUTES_PER_HOUR` and assign it to integer `60`
# initialize constant `HOURS_PER_DAY` and assign it to integer `24`
# initialize constant `MINUTES_PER_DAY` and assign it to the return value of `HOURS_PER_DAY` times `MINUTES_PER_HOUR`

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"