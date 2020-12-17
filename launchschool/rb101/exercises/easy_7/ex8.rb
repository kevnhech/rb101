# input: two arrays
# output: one arrays
# rules: the arguments contain the same number of elements

# Algorithm:
#   multiply_list method
#     - create variable `arr` that will be an empty array
#     - start a loop that iterates through every value and index in the first array
#       - multiply every value in the first array by every value in the second array, then shove the result in array `arr`
#     - end the outter loop
#     return variable `arr`

def multiply_list(arr1, arr2)
  arr = []
  arr1.each_with_index { |item, index|
    arr << item * arr2[index]
  }
  arr
end