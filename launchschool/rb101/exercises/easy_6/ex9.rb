# input: array and integer
# output: boolean (true or false)
# rules: Array#include? is prohibited

# Algorithm:
#   include? method
#     - start a loop that iterates over every value in the array
#       - return boolean `true` if a value in the array is equal to the integer
#       - otherwise return boolean `false`
#     - end the outer loop

def include?(array, object)
  array.any? { |value| value == object }
end