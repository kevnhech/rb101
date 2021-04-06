# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# input: three integers
# output: strings `A` through `F` depending on the input
# rules: tested values are all between 0 and 100
#        there is no need to check for negative values or values greater than 100

# initialize `mean` and assign it to the return value of the input integers added together divided by the quantity of them
# invoke an if/else statement
#   return `A` if `mean` equates to values 90-100
#   return `B` if `mean` equates to values 80-89
#   return `C` if `mean` equates to values 70-79
#   return `D` if `mean` equates to values 60-69
#   return `F` if `mean` equates to values 0-59
# end the block

def get_grade(x, y, z)
  mean = (x + y + z) / [x, y, z].length
  if (90..100).any?(mean)
    "A"
  elsif (80..89).any?(mean)
    "B"
  elsif (70..79).any?(mean)
    "C"
  elsif (60..69).any?(mean)
    "D"
  else
    "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"