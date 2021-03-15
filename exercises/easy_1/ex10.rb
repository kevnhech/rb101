# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# input: a positive integer and a boolean
# output: a calculation of the bonus for a given salary
# rules: if the boolean is true, the bonus is half the salary
#        if the boolean is false, the bonus is 0

# invoke an if/else statement
#   return the sum of the number divided by 2 if the boolean is true
#   return 0 if the boolean is false
# end the block

def calculate_bonus(num, boolean)
  if boolean == true
    num / 2
  else
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000