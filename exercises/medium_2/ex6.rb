# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# input: 3 integers
# output: symbol
# rules: to be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid

# initialize `degrees` and assign it to integer `180`
# invoke a case statement
#   return `invalid` if the sum of the inputs do not equate to `degrees` AND if each input equates to  `0`
#   return `right` if one of the inputs equates to integer `90`
#   return `acute` if all 3 inputs are less than integer `90`
#   return `obtuse` if one input is greater than integer `90`

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid