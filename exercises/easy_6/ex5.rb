# input: array
# output: new array
# rules: Array#reverse and Array#reverse! are forbidden

# Algorithm:
#   reverse method
#   ==============
#     - create an empty array `new_array`
#     - create a variable `final_index` that will equal to -1
#     - open a loop
#       - break out of this loop once the size of array `new_array` is equal to the size of the array in the argument
#       - grab the final index of the argument and shove it in `new_array`
#       - reduct `final_index` by 1
#     - close this loop
#     - return `new_array`

def reverse(arg)
  new_array = []
  final_index = -1

  while new_array.size != arg.size
    new_array << arg[final_index]
    final_index -= 1
  end

  new_array
end