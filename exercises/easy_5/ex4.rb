# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# input: string
# output: string but with every sub string's first and last character swapped
# rules: every word contains at least one letter
#        the string will always contain at least one word
#        each string contains nothing but words and spaces

# iterate through every character in the string
#   swap the first and last letter of every substring
# end the block
# return the string

def swap(string)
  arr = string.split.each do |str|
    str[0], str[-1] = str[-1], str[0]
  end
  arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Further Exploration

# How come our solution passes word into the swap_first_last_characters method invocation instead of just passing the characters that needed to be swapped?

# It's becasue we had to iterate through `word` and reassign their substrings within the definition method. Doing it outside of the definition method will not work, since it is in a different scope.