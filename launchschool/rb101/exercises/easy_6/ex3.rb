# input: integer
# output: integer
# rules: write a method that calculates and returns the index of the first fibonacci number that has the number of digits specified as an argument

# Algorithm:
#   find_fibonacci_index_by_length method
#   =====================================
#     - create variable `first_number` that equals to 1 in accordance with the series definition
#     - create variable `second_number` that equals to 1 in accordance with the series definition
#     - create variable `index` that equals to 2 since we now have the 2nd fibonacci number in `second_number`
#     - start a loop
#       - iterate `index` by 1
#       - create a new variable `fibonacci` that will equal to `first_number` plus `second_number`
#       - break out of the code if the size of `fibonacci` in string form is greater than or equal to `argument`
#       - assign `first_number` equal to `second_number`
#       - assign `second_number` equal to `fibonacci`
#     - close outer loop
#     - return `index`

def find_fibonacci_index_by_length(num)
  first_number = 1
  second_number = 1
  index = 2

  loop do
    index += 1
    fibonacci = first_number + second_number
    break if fibonacci.to_s.size >= num

    first_number = second_number
    second_number = fibonacci
  end

  index
end