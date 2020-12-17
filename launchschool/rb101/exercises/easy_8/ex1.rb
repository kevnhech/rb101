# input: array
# output: integer (the sum of sums of each leading subsequence)
# rules: the array always contains at least one number

# Algorithm:
#   sum_of_sums method
#     - create variable `sum_total` that will equal to 0
#     - create variable `accumulator` that will equal to 0
#     - start a loop that will iterate through every value in the array
#       - increment variable `accumulator` by every value in the array
#       - increment variable `sum_total` by variable `accumulator`
#     - end the loop
#     - return variable `sum_total`

def sum_of_sums(array)
  sum_total = 0
  accumulator = 0

  array.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end