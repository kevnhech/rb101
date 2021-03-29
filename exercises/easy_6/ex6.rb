# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays

# input: two arrays
# output: both arrays merged together becoming one array
# rules: there should be no duplication of values in the returned array

# add both inputs together and call method `uniq` on the return value

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]