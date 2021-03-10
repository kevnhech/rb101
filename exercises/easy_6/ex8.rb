# input: array
# output: integer
# rules: return the duplicate value in the array

# Algorithm:
#   find_dup method
#   ===============
#    - add all the values together in the argument, then subtract it by the sum of the argument that doesn't have repeating values

def find_dup(array)
  array.sum - array.uniq.sum
end
