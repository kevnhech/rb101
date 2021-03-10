# input: array
# output: array
# rules: move the first element to the end of the array. the original array should not be modified. Array#rotate and Array#rotate! are forbidden

# Algorithm:
#   rotate_array method
#     - initialize variable `arr` that will be an empty array
#     - start a loop that iterates through the objects in the arguments array
#       - insert every object in variable `arr`
#     - close the outer loop
#     - initialize variable `first` that will equal to the first index of variable `arr`
#     - insert variable `first` to array `arr`

def rotate_array(rotation)
  arr = []
  rotation.each do |sub|
    arr << sub
  end
  first = arr.shift
  arr << first
end