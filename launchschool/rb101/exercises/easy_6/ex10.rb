# input: integer
# output: string
# rules: the hypotenuse of the triangle should have one end at the lower left of the triangle and the other end at the upper right

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end