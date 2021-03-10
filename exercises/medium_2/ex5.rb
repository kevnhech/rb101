# input: three numbers
# output: symbols equilateral, isosceles, scalene, or invalid
# rules: to be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0. if either of these conditions are not satisfied, the triangle is invalid.

# Test cases:
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# Algorithm:
#   triangle method
#   ===============
#   - initialize variable arr that will equal to the argument
#   - initialize variable `equilateral` that will equal to the comparison of all three values and passes an argument to check if those values are above zero
#   - initialize variable `isosceles` that will equal to the comparison of two values and then compares the sum of those two values with the final value and passes an argument to check if those values are above zero
#   - initialize variable `scalene` that will equal to the comparison of all three values and passes an argument to check if those values are above zero
#   - initialize an if/else statement
#     - return symbol :equilateral if variable `equilateral` returns true
#     - return symbol :isosceles if variable `isosceles` returns true
#     - return symbol :scalene if variable `scalene` returns true
#     - return symbol :invalid if all three tests fail
#   - end the if/else statement

def triangle(first, second, third)
  arr = [first, second, third]
  equilateral = ((arr[0] == arr[1]) && (arr[0] == arr[2]) && (arr[1] == arr[2])) && ((arr[0] != 0) && (arr[1] != 0) && (arr[2] != 0))
  isosceles = ((arr[0] == arr[1] && (arr[0] + arr[1]) > arr[2]) || (arr[0] == arr[2] && (arr[0] + arr[2]) > arr[1]) || (arr[1] == arr[2] && (arr[1] + arr[2]) > arr[0])) && ((arr[0] != 0) && (arr[1] != 0) && (arr[2] != 0))
  scalene = ((arr[0] != arr[1]) && (arr[0] != arr[2]) && (arr[1] != arr[2])) && ((arr[0] != 0) && (arr[1] != 0) && (arr[2] != 0))

  if equilateral
    :equilateral
  elsif isosceles
    :isosceles
  elsif scalene
    :scalene
  else
    :invalid
  end
  
end