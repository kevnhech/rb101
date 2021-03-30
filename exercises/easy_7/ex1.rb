# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation

# input: two arrays
# output: one array that combines both of the inputs with the elements taken in alteration
# rules: both input arrays are non empty
#        both input arrays have the same number of elements

# initialize empty array `arr`
# invoke a loop method
#   break if both input arrays are empty
#   append the first element of the first input array to `arr`
#   append the first element of the second input array to `arr`
# end the block
# return `arr`

def interleave(arr1, arr2)
  arr = []
  loop do
    break if arr1.empty? && arr2.empty?
    arr << arr1.shift
    arr << arr2.shift
  end
  arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']