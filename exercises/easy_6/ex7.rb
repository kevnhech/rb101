# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively

# input: array
# output: a pair of nested arrays that contain the first half and second half of the original array
# rules: if the length of the original array is odd, the middle element should be placed in the first half array

# initialize array `arr`
# initialize `counter` and assign it to float `0.0`
# increment `counter` by the length of the array
# initialize `half` and assign it to the return value of `counter` divided by `2`
# call a method that will round `half`
# subtract `half` by `1`
# assign the elements that are in a range of `0` to `half` to `first`
# increment `half` by `1`
# assign the elements that are in a range of `half` to `counter` to `second`
# append `first` and `second` to `arr`
# return `arr`

def halvsies(array)
  arr = []
  counter = array.length.to_f
  half = (counter / 2).round - 1
  first_half = array[0..half]
  half += 1
  second_half = array[half..counter]
  arr << first_half
  arr << second_half
  arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]