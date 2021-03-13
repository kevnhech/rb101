# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# input: a positive integer
# output: an array of integers
# rules: every integer that is the input must be separated in the array

# initialize array `arr`
# initialize variable `idx` and assign it to `0`
# initialize a loop
#   iterate over the string version of the integer using `idx` and append the integer version of the sub-strings to `arr`
#   increment `idx` by `1`
#   break out of the loop when `idx` plus `1` is the length of the string version of the integer input
# return `arr`

def digit_list(number)
  arr = []
  idx = 0
  count = 0
  loop do
    arr << number.to_s[idx].to_i
    idx += 1
    count += 1
    break if count == number.to_s.length
  end
  arr
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true