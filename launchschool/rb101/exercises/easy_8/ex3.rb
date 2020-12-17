# input: string
# output: array (a list of all substrings of a string that start at the beginning of the original string)
# rules: the return value should be arranged in order from shortest to longest substrings

# Algorithm:
#   leading_substrings method
#     - create variable `arr` that will be an empty array
#     - create variable `count` that will equal to 0
#     - start a loop
#       - break out of the loop once the size of the string matches the size of array `arr`
#       - return a character within the string by using a range of numbers 0 to variable `count`, then insert the selected character(s) to array `arr`
#       - increment variable `count` by 1
#     - end the loop
#     - return array `arr`

def leading_substrings(string)
  arr = []
  count = 0

  loop do
    break if string.size == arr.size
    arr << string[0..count]
    count += 1
  end

  arr
end