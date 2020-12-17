# input: two arrays
# output: one array
# rules: return a new array that contains all elements from both array arguments with the elements taken in alternation

# Algorithm:
#   interleave method
#     - create variable `final_array` that will be an empty array
#     - create variable `index` that will equal 0
#     - start a loop
#       - break out of this loop if both of the array's size is equal to the size of array `final_array`
#       - shove the first array's values into array `final_array` once
#       - shove the second array's values into array `final_array` once
#       - increment `index` by 1
#     - end the outer loop
#     - return array `final_array`

def interleave(first_array, second_array)
  final_array = []
  index = 0

  loop do
    break if (first_array.size + second_array.size) == final_array.size
    final_array << first_array[index]
    final_array << second_array[index]
    index += 1
  end
  
  final_array
end