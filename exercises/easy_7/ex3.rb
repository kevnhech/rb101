# input: string
# output: string
# rules: uppercase the first character of every word

# Algorithm:
#   word_cap method
#     - start a loop that iterates over every word in the string then assign this loop to variable `str`
#       - capitalize the first character for every word in the string
#     - close the outer loop
#     - return variable `str`

def word_cap(string)
  str = string.split.map do |word|
    word.capitalize
  end
  
  str.join(" ")
end