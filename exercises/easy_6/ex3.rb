# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# input: integer
# output: integer of the index of the first fibonacci number that has the number of digits specified
# rules: the argument is always greater than or equal to 2
#        a method that calculates fibonacci will be necessary

# fibonacci method
# ================
# initialize `first_num` and assign it to `0`
# initialize `second_num` and assign it to `1`
# initialize array `arr`
# invoke a while loop that will break when the input is equal to the length of digits of the last fibonacci number
#   reassign `first_num` to `second_num` and assign `second_num` to the return value of `first_num` plus `second_num`
#   append `first_num` to `arr`
# end the block
# return the length of `arr`

def find_fibonacci_index_by_length(number)
  first_num = 0
  second_num = 1
  arr = []

  while number != first_num.to_s.length
    first_num, second_num = second_num, first_num + second_num
    arr << first_num
  end
  arr.length
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847