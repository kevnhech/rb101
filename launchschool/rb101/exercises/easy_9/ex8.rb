# input: two integers
# output: array
# rules: the count argument will always have a value of 0 or greater while the starting number can be any integer value. if the count is 0, an empty list should be returned

# Algorithm:
#   sequence method
#   ===============
#     - initialize a variable called `arr` that will be an empty array
#     - initialize a variable called `num` that will equal to the second integer
#     - start a loop
#       - stop the loop when variable `arr` has the same length as the first integer
#       - insert variable `num` to variable `arr`
#       - increment variable `num` by the second integer
#     - end the outer loop
#     return variable `arr`

def sequence(count, number)
  arr = []
  num = number
  loop do
    break if arr.length == count
    arr << num
    num += number
  end
  arr
end