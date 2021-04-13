# Write a method that can rotate the last n digits of a number

# input: two integers
# output: integer
# rules: rotating 1 digit results in the original number being returned
#        n is always a positive integer

# initialize array `arr` and assign it to the array version of the input that has elements as strings
# initialize `num` and assign it to the element that is in an index of negative `y`
# initialize `new_num` and assign it to the return value of `delete` called on `arr` with arguments `num`
# append `new_num` to `arr`
# call method `join` on `arr` then convert it to an integer

def rotate_rightmost_digits(number, digit)
  arr = number.to_s.chars
  num = arr[-digit]
  new_num = arr.delete(num)
  arr << new_num
  arr.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917