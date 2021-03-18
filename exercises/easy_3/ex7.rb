# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# input: an array of integers
# output: an array with elements that are in the 1st, 3rd, 5th, etc position of the array
# rules: the elements that are positioned in odd numbers must be removed 

# initialize a new array `arr`
# iterate over every element and their index in the array
#   append an element to `arr` if the element's index is an even number
# end the block
# return `arr`

def oddities(array)
  arr = []
  array.each_with_index do |val, idx|
    arr << val if idx.even?
  end
  arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Further Exploration

# Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array.
# Try to solve this exercise in at least 2 additional ways.

# input: an array of integers
# output: an array with elements that are in the 2nd, 4th, 6th, etc position of the array
# rules: the elements that are positioned in even numbers must be removed 

# initialize a new array `arr`
# iterate over every element and their index in the array
#   append an element to `arr` if the element's index is an odd number
# end the block
# return `arr`

def evenities(array)
  arr = []
  array.each_with_index do |val, idx|
    arr << val if idx.odd?
  end
  arr
end

p evenities([2, 3, 4, 5, 6]) == [3, 5]
p evenities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evenities(['abc', 'def']) == ['def']

# OR

def evenities(array)
  arr = []
  idx = 1
  while idx < array.size
    arr << array[idx]
    idx += 2
  end
  arr
end

p evenities([2, 3, 4, 5, 6]) == [3, 5]
p evenities([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evenities(['abc', 'def']) == ['def']