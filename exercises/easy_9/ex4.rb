# input: integer
# output: array
# rules: the argument will always be a valid integer that is greater than 0

# Algorithm:
#   sequence method
#   ===============
#     - initialize variable arr that will be an empty array
#     - start a loop that will iterate through numbers one through the value of the argument
#       - insert every number to array `arr`
#     - end the outer loop
#     - return arr

def sequence(integer)
  arr = []
  1.upto(integer) do |num|
    arr << num
  end
  arr
end