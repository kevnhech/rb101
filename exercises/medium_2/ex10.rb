# input: integer
# output: integer

# Test case:
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# Algorithm:
#   sum_square_difference method
#   ============================
#     - initialize variable `first` that equals to an empty array
#     - insert values 1 through whatever value the argument is into variable `first` 
#     - initialize variable `second` that will equal to a loop that iterates through every value in array `first`
#       - raise each value to the power of 2
#     - close the outer loop
#     - return an equation that is shown in the test case

def sum_square_difference(int)
  first = []
  1.upto(int) { |num| first << num }
  second = first.map do |num|
    num ** 2
  end
  (first.sum ** 2) - second.sum
end