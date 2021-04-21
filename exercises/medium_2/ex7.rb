# Write a method that returns the number of Friday the 13ths in the year given by an argument

# input: integer (year)
# output: integer
# rules: the year is greater than 1752

# initialize `total` and assign it to `0`
# initialize `time` and assign it to the date of the year the input equates to
# invoke a loop
#   break if the year `time` does not equate to the input anymore
#   increment `total` by `1` if the day `time` equates to friday
#   increment `time` by `86400`
# end the block
# return `total`

def friday_13th(year)
  total = 0
  time = Time.new(year)

  loop do
    break if time.year != year
    total += 1 if time.friday? && time.day == 13
    time += 86400
  end

  total
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2