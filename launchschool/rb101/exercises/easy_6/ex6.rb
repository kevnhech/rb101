# input: array
# output: new array
# rules: there should be no duplication of values in the returned Array

# Algorithm:
#   merge method
#   ============
#     - create variable `new_array` that will be an empty array
#     - start a loop that iterates over every object in the first argument
#       - assign every object in the first argument to variable `new_array`
#     - close the loop
#     - start a loop that iterates over every object in the second argument
#       - assign every object in the second argument to variable `new_array`
#     - close the loop
#     - return a version of variable `new_array` that has no duplicated values

def merge(arr1, arr2)
  new_array = []

  arr1.each do |obj|
    new_array << obj
  end

  arr2.each do |obj|
    new_array << obj
  end

  new_array.uniq
end