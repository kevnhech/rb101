# Write a method that rotates an array by moving the first element to the end of the array

# input: array
# output: array
# rules: the original array should not be modified
#        don't use `#rotate` or `#rotate!`

# initialize empty array `arr`
# append index values `1` through `-1` from the input array to `arr`
# append index values `0` from the input array to `arr`
# return `arr` with the method `flatten` called

def rotate_array(array)
  arr = []
  arr << array[1..-1]
  arr << array[0]
  arr.flatten
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true