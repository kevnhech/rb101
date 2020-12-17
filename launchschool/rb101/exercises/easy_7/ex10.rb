# input: string
# output: string (the next to last word in the string passed to it as an argument)
# rules: words are any sequence of non-blank characters

# Algorithm:
#   penultimate method
#     - create variable `str` that will be an empty string
#     - convert the string to an array, call the the second to last index, then assign the result to variable `str`
#     - return variable `str`

def penultimate(string)
  str = ''
  str += string.split[-2]
  str
end