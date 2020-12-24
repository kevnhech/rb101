# input: integer
# output: integer
# rules: the year is greater than 1752

# Test case:
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# Algorithm:
#   friday_13th method
#   ==================
#     - initialize variable `date` that will use the argument as a year and date
#     - initialize variable `count` that equals to 0
#     - start a loop
#       - stop the loop once variable `date`s month equals to 12 and once variable `date`s day is greater than 13
#       - increment variable `date` by 1
#       - increment variable `count` by 1 if variable `date`s day equals string `Fri`
#     - close the loop
#     - return variable `count`

def friday_13th(integer)
  date = Date.new(integer)
  count = 0
  loop do
    break if date.mon == 12 && date.mday > 13
    date += 1
    count += 1 if date.strftime('%a') == 'Fri' && date.mday == 13
  end
  count
end