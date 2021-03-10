# input: three integers
# output: symbols acute, right, obtuse, and invalid
# rules: arguments are specified in degrees

# Test case:
# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid

# Algorithm:
#   triangle method
#     - initialize variable `arr` that will equal to an array with the arguments stored in it
#     - initialize variable `right` that compares the values in variable `arr` with integer 90 to check if at least one value is equal to 90 and compares the sum of variable array `arr` with integer 180 to check if it equals 180 and compares every value in variable `arr` with 0 to check if every value is greater than 0
#     - initialize variable `acute` that compares the values in variable `arr` with integer 90 to check if every value is less than 90 and compares the sum of variable array `arr` with integer 180 to check if it equals 180 and compares every value in variable `arr` with 0 to check if every value is greater than 0
#     - initialize variable `obtuse` that compares the values in variable `arr` with integer 90 to check if at least one value is greater than 90 and compares the sum of variable array `arr` with integer 180 to check if it equals 180 and compares every value in variable `arr` with 0 to check if every value is greater than 0
#     - initialize an if/else statement
#       - return symbol `right` if variable `right` returns true
#       - return symbol `acute` if variable `acute` returns true
#       - return symbol `obtuse` if variable `obtuse` returns true
#       - return symbol `invalid` if variables `right`, `acute`, and `obtuse` returns false
#     - close the if/else block

def triangle(first, second, third)
  arr = [first, second, third]
  right = (arr[0] == 90 || arr[1] == 90 || arr[2] == 90) && (arr.sum == 180) && (arr[0] > 0 && arr[1] > 0 && arr[2] > 0)
  acute = (arr[0] < 90 && arr[1] < 90 && arr[2] < 90) && (arr.sum == 180) && (arr[0] > 0 && arr[1] > 0 && arr[2] > 0)
  obtuse = (arr[0] > 90 || arr[1] > 90 || arr[2] > 90) && (arr.sum == 180) && (arr[0] > 0 && arr[1] > 0 && arr[2] > 0)

  if right
    :right
  elsif acute
    :acute
  elsif obtuse
    :obtuse
  else
    :invalid
  end

end