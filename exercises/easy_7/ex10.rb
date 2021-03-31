# Write a method that returns the next to last word in the String passed to it as an argument.

# input: string
# output: second to last word of a string
# rules: words are any sequence of non-blank characters
#        the input string will always contain at least two words

# return the second to last input string by calling method `split` and using integer `-2`

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'