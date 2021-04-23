# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix

# input: nested array
# output: nested array of transpose matrix
# rules: Array#transpose is forbidden
#        any method from the Matrix class is forbidden

# initialize empty array `matrix`
# initialize empty array `first_row`
# initialize empty array `second_row`
# initialize empty array `last_row`
# invoke method `each` on the input array
#   append the first element of every subarray to `first_row`
# end the block
# repeat this algorithm 3 times for arrays `second_row` and `last_row`
# append `first_row`, `second_row`, and `last_row` to `matrix`
# return `matrix`

def transpose(array)
  matrix = []
  first_row = []
  second_row = []
  last_row = []

  array.each do |arr|
    first_row << arr[0]
  end

  array.each do |arr|
    second_row << arr[1]
  end

  array.each do |arr|
    last_row << arr[2]
  end

  matrix << first_row
  matrix << second_row
  matrix << last_row

  matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]