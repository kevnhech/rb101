# input: integer
# output: integer
# rules: return 2 times the number provided as an argument unless the argument is a double number

# Algorithm:
#   twice method
#     - initialize a variable `left` that will be an empty array
#     - initialize a variable `right` that will be en empty array
#     - call a method on the argument that will convert it to a string, split each value within the array separately, call a method that outputs the length of the array, then assign the value divided by two to variable `index`
#     - use a range of numbers to grab the first half of the array using 0 and `index`, then insert the output to `left`
#     - use a range of numbers to grab the last half of the array using `index` and -1, then insert the output to `right`
#     - if variable `left` is equal to variable `right` have the two variables join and converted to integers
#     - multiply the argument by 2 if variable `left` and variable `right` do not equal

def twice(number)
  arr = number.to_s.chars
  left = []
  right = []
  index = arr.length / 2
  left << arr[0..index-1]
  right << arr[index..-1]
  if left == right && arr.length >= 2
    (left + right).join.to_i
  else
    number * 2
  end
end