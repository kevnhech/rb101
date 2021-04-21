# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# input: three integers
# output: symbol
# rules: equilaterals are all 3 sides of equal length
#        isosceles are 2 sides of equal length, while the 3rd is different
#        scalene are all 3 sides of different length
#        the sum of the lengths of the two shortest sides must be greater than the length of the longest side
#        all sides must have lengths greater than 0
#        if either of these conditions are not satisfied, the triangle is invalid

# invoke an if/else statement
#   return `:equilateral` if all 3 inputs equal each other and if they're greater than `0`
#   return `:isosceles` if 2 sides are of equal length and the 3rd is different, the sum of the 2 sides are greater than the 3rd side, and if they're greater than `0`
#   return `:scalene` if all 3 inputs are of different length and if they're greater than `0`
#   return `:invalid` otherwise
# end the block

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid