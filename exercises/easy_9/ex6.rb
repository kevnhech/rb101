# input: string
# output: array
# rules: words in the string are separated by one space, any substring of non-space characters is a word

# Algorithm:
#   word_lengths method
#     - initialize a new variable `arr` that will equal an empty array
#     - convert the string to an array, then start a loop that iterates through every substring
#       - append the length of the substring inside of the substring itself, then insert the result to variable `arr`
#     - close the outer loop
#     - return variable `arr`

def word_lengths(string)
  arr = []
  string.split.each do |sub|
    arr << sub + ' ' + sub.length.to_s
  end
  arr
end