# input: float
# output: string
# rules: the output returns a string that represents an angle in degrees, minutes, and seconds. use a degree symbol to represent degrees, a single quote to represent minutes, and a double quote to represent seconds. a degree has 60 minutes, while a minute has 60 seconds

# Algorithm:
#   - create a constant named `DEGREE` to represent the degree symbol
#   - create a constant named `MINUTES_PER_DEGREE` that will equal to 60
#   - create a constant named `SECONDS_PER_MINUTE` that will equal to 60
#   - create a constant named `SECONDS_PER_DEGREE` that will equal to constant `MINUTES_PER_DEGREE` multiplied by constant `SECONDS_PER_MINUTE`
#
#     dms method
#     ==========
#       - create a variable named `total_seconds` that equals to the argument multiplied by constant `SECONDS_PER_DEGREE` then round the result
#       - create variables `degrees` and `remaining_seconds` so that variable `degrees` can equal to the quotient of variable `total_seconds` divided by constant `SECONDS_PER_DEGREE` then 
#         create variable `remaining_seconds` to equal the remainder of variable `total_seconds` divided by constant `SECONDS_PER_DEGREE`
#       - create variables `minutes` and `seconds` so that variable `minutes` can equal to the quotient of variable `remaining_seconds` divided by constant `SECONDS_PER_MINUTE` then create 
#         variable `seconds` to equal the remainder of variable `remaining_seconds` divided by constant `SECONDS_PER_MINUTE`
#       - return the variables in the following order: (variable `degrees`, constant `DEGREE`, float %02d twice) variable `minutes`, variable `seconds` all in string format

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(float)
  total_seconds = (float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end