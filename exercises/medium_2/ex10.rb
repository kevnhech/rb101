# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers

# input: integer
# output: integer

# initialize `sum_square` and assign it to an array with elements that have a range of `1` to the input integer, add all elements, then square the sum
# initialize `square_sum` and assign it to an array with elements that have a range of `1` to the input integer
# loop over every element in `square_sum`
#   square each element
# end the block
# subtract `sum_square` by the sum of `square_sum`

def sum_square_difference(number)
  sum_square = (1..number).to_a.sum ** 2
  square_sum = (1..number).to_a

  square_sum.map! do |num|
    num ** 2
  end

  sum_square - square_sum.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150