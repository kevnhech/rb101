# Write a method that returns a list of all substrings of a string that start at the beginning of the original string

# input: string
# output: array
# rules: the return value should be arranged in order from shortest to longest substring

# initialize empty array `arr`
# initialize `first_char` to integer `0`
# initialize `char` to `0`
# invoke a loop
#   break if `char` equates to the length of the string
#   append a character from the input string using a range of `first_char` and `char` to `arr`
#   increment `char` by `1`
# end the block
# return `arr`

def leading_substrings(string)
  arr = []
  first_char = 0
  char = 0

  loop do
    break if char == string.length
    arr << string[first_char..char]
    char += 1
  end

  arr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']