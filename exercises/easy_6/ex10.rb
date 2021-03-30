# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars

# input: integer
# output: string of asterisks
# rules: the hypotenuse of the triangle should have one end at the lower-left of the triangle and the other end at the upper-right

# initialize `str` and assign it to the space character as many times as the input equates to
# initialize `idx` and assign it to integer `-1`
# invoke a loop
#   break out of the loop if `idx` equates to the input in negative form
#   return `str`
#   reassign the last index of `str` to string `*` using `idx`
#   increment `idx` by `-1`
# end the block

def triangle(number)
  str = " " * number
  idx = -1
  count = 0
  loop do
    puts str
    count += 1
    break if count == number + 1
    str[idx] = "*"
    idx += -1
  end
end

p triangle(5)