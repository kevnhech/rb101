# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not

# input: array and value that searches if the value is in the array
# output: boolean
# rules: the method should return `true` if the search value is in the array, `false` if it is not
#        Array#include? is forbidden

# call method `any?` passing in the value argument on the array that is input

def include?(array, value)
  array.any?(value)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false