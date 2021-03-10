# input: array of integers between 0 and 19
# output: array of those integers sorted based on the English words for each number
# rules: sort the array of those integers based on the English words for each number.

# Test case:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# Algorithm:
#   - create an array of strings named `numbers` that will contain a list of strings `zero` through `nineteen`

#   alphabetic_number_sort method
#   =============================
#     - sort the numbers in the argument by each number's corresponding English name

NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

def alphabetic_number_sort(array)
  array.sort_by { |num| NUMBERS[num] }
end
