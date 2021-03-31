# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places

# input: array of integers
# output: result of every integer in the input array multiplied together than divided by the number of entries in the array rounded to 3 decimal places
# rules: the array is non-empty

# initialize `total` and assign it to integer `1`
# initialize `idx` and assign it to integer `0`
# invoke a loop method
#   break if idx equates to the length of the input array
#   reassign `total` to the return value of `total` multiplied by every element in `array`
#   increment `idx` by `1`
# end the block
# reassign `total` to the return value of `total` divided by the length of the input array in float form

def show_multiplicative_average(array)
  idx = 0
  total = 1
  
  loop do
    break if idx == array.length
    total *= array[idx]
    idx += 1
  end

  total /= array.length.to_f
  total.round(3)
  puts "=> The result is #{sprintf('%.3f', total)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])