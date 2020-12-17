# input: integer
# output: integer
# rules: no leading zeros in return value

# Algorithm:
#   reversed_number method
#   ======================
#     - initialize a `result` variable that will equal the argument in array format with sub-strings
#     - start a loop 
#       - break out of the loop if the last integer of array `result` does not equal 0
#       - if the last integer of array `result` is 0, remove it
#     - close the outer loop
#     - return variable `result` in reversed and integer form

def reversed_number(integer)
  result = integer.to_s.chars
  loop do
    break if result[-1] != "0"
    result.pop
  end
  result.reverse.join.to_i
end