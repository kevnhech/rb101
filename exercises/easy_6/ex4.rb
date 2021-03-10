# input: array
# output: array (mutated)
# rules: Array#reverse and Array#reverse! are forbidden

# Algorithm:
#     reverse! method
#     ===============
#       - create variable `first_index` that will equal to 0 to represent the first index of the array
#       - create variable `last_index` that will equal -1 to represent the last index of the array
#       - open a loop that will stop if `first_index` is greater than the size of the argument divided by 2
#         - the first index in the array will equal to the last index in the array, and the last index in the array will equal to the first index in the array
#         - increment `first_index` by 1
#         - reduct `last_index` by 1
#       - close outer loop
#       - return the argument

def reverse!(arg)
  first_index = 0
  last_index = -1

  while first_index < arg.size / 2
    arg[first_index], arg[last_index] = arg[last_index], arg[first_index]
    first_index += 1
    last_index -= 1
  end

  arg
end